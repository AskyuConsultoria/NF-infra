terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


module "keys" {
  source = "./modules/keys"
  pbkey-ges-pub = var.pbkey-ges-pub
  pvkey-ges-pub = var.pvkey-ges-pub
  pbkey-jupyter-pub = var.pbkey-jupyter-pub
}

module "vpc" {
  source              = "./modules/vpc"
  aws_region          = var.aws_region
  vpc_cidr_block      = var.vpc_cidr_block
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr   
  private_subnet_cidr_db = var.private_subnet_cidr_db
}

module "bucket" {
  source = "./modules/bucket"
}


output "unstructured-bucket-name" {
  value = module.bucket.raw_unstructured_bucket_name
}

output "structured-bucket-name" {
  value = module.bucket.raw_structured_bucket_name
}

output "trusted-bucket-name" {
  value = module.bucket.trusted_bucket_name
}

output "inventory-bucket-name" {
  value = module.bucket.inventory_bucket_name
}

output "id_bucket_trusted" {
  value = module.bucket.id_bucket_trusted
}

module "lambda" {
  source              = "./modules/lambda"
  nome_bucket_trusted = module.bucket.trusted_bucket_name
}

module "bastion" {
  source                = "./modules/bastion"
  ami                   = var.ami
  bastion_instance_type = var.bastion_instance_type
  pbkey_name            = var.pbkey_name
  security_groups       = [module.vpc.security_group_id]
  public_subnet_id      = module.vpc.public_subnet_id
}

module "private_instance" {
  source = "./modules/private_instance"
  ami           = var.ami
  private_instance_type = var.private_instance_type
  pvkey_name       = var.pvkey_name
  security_groups = [module.vpc.security_group_id]
  private_subnet_id  = module.vpc.private_subnet_id
}

module "db_instance" {
  source = "./modules/db_instance"
  ami           = var.ami
  private_instance_type = var.private_instance_type
  pvkey_name       = var.pvkey_name
  security_groups = [module.vpc.security_group_id]
  db_subnet_id = module.vpc.db_subnet_id
}

module "jupyter" {
  source                = "./modules/jupyter"
  ami                   = var.ami
  jupyter_instance_type = var.jupyter_instance_type
  pbkey_jupyter_name    = var.pbkey_jupyter_name
  security_groups       = [module.vpc.security_group_id]
  public_subnet_id      = module.vpc.public_subnet_id
  user_data             = file("jupyter.yaml")
}

module "lb" {
  source = "./modules/lb"
  vpc_id = module.vpc.vpc_id
  security_groups = [module.vpc.security_group_id]
  subnets = module.vpc.public_subnet_id
  bastion_public_ip = module.bastion.bastion_public_ip
  bastion_instance_id = module.bastion.bastion_instance_id
  environment = var.environment
}


# module "api-gateway" {
#   source      = "./modules/api-gateway"
#   backend_url = "http://${module.bastion.bastion_public_ip}:8080/syntro/solicitacao-servico"
# }

output "bastion_public_ip" {
  value = module.bastion[*].bastion_public_ip
}

output "private_instance_ip" {
  value = module.private_instance[*].private_instance_ip
}

output "db_instance_ip" {
  value = module.db_instance.db_instance_ip
}

output "jupyter_public_ip" {
  value = module.jupyter.jupyter_public_ip
}

# output "api_gateway_url" {
#   value = module.api-gateway.api_gateway_url
# }

output "vpc_id" {
    value = module.vpc.vpc_id 
}

resource "local_file" "inventory_ini" {
  content = <<EOT
[backend]
${join("\n", [for ip in module.bastion.bastion_public_ip : "${ip} ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/pbkey-ges"])}

[backend:vars]
aws_access_key_id=${var.aws_access_key_id}
aws_secret_access_key=${var.aws_secret_access_key}
aws_session_token=${var.aws_session_token}
aws_region=us-east-1
aws_bucket_name=${module.bucket.raw_unstructured_bucket_name}
spring_datasource_url=jdbc:mysql://${module.db_instance.db_instance_ip}:3306/syntro

[frontend]
${join("\n", [
  for idx, ip in module.bastion.bastion_public_ip :
  "${ip} ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/pbkey-ges backend_ip=${element(module.private_instance.private_instance_ip, idx)}"
])}

[database]
${module.db_instance.db_instance_ip} ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/pvkey-ges ansible_ssh_common_args='-o ProxyCommand="ssh -i ~/.ssh/pbkey-ges -W %h:%p ubuntu@${element(module.bastion.bastion_public_ip,0)}"'
EOT

  filename = "${path.module}/inventory.ini"
}

resource "aws_s3_bucket" "ansible_inventory" {
  bucket        = "syntro-ansible-inventory"
  force_destroy = true

  tags = {
    Name        = "Syntro Ansible Inventory"
  }
}

resource "aws_s3_object" "inventory" {
  bucket = aws_s3_bucket.ansible_inventory.bucket
  key    = "inventory.ini"
  source = local_file.inventory_ini.filename


  depends_on = [local_file.inventory_ini]
}

output "ansible_inventory_url" {
  description = "URL do arquivo de inventário no S3"
  value       = "https://${aws_s3_bucket.ansible_inventory.bucket}.s3.amazonaws.com/${aws_s3_object.inventory.key}"

  depends_on = [aws_s3_object.inventory]
}

