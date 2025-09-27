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
}

module "vpc" {
  source = "./modules/vpc"
  vpc_cidr_block = var.vpc_cidr_block
  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
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
  source = "./modules/lambda"
  nome_bucket_trusted = module.bucket.trusted_bucket_name
}

module "bastion" {
  source = "./modules/bastion"
  ami           = var.ami
  bastion_instance_type = var.bastion_instance_type
  pbkey_name        = var.pbkey_name
  security_groups = [module.vpc.security_group_id]
  public_subnet_id = module.vpc.public_subnet_id
}   

module "private_instance" {
  source = "./modules/private_instance"
  ami           = var.ami
  private_instance_type = var.private_instance_type
  pvkey_name       = var.pvkey_name
  security_groups = [module.vpc.security_group_id]
  private_subnet_id = module.vpc.private_subnet_id
}

module "jupyter" {
  source = "./modules/jupyter"
  ami           = var.ami
  jupyter_instance_type = var.jupyter_instance_type
  pbkey_jupyter_name        = var.pbkey_jupyter_name
  security_groups = [module.vpc.security_group_id]
  public_subnet_id = module.vpc.public_subnet_id
  user_data = file("jupyter.yaml")
}   


module "api-gateway"{
  source = "./modules/api-gateway"
  backend_url = "http://${module.bastion.bastion_public_ip}:8080/syntro/solicitacao-servico"
}

output "bastion_public_ip" {
  value = module.bastion.bastion_public_ip
}

output "private_instance_ip" {
  value = module.private_instance.private_instance_ip
}

output "jupyter_public_ip" {
  value = module.jupyter.jupyter_public_ip
}

output "api_gateway_url" {
  value = module.api-gateway.api_gateway_url
}

resource "local_file" "inventory_ini" {
  content = <<EOT
  [backend]
  ${module.bastion.bastion_public_ip} ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/pbkey-ges 

  [backend:vars]
  aws_access_key_id=${var.aws_access_key_id}
  aws_secret_access_key=${var.aws_secret_access_key}
  aws_session_token=${var.aws_session_token}
  aws_region=us-east-1
  aws_bucket_name=${module.bucket.raw_unstructured_bucket_name}
  spring_datasource_url=jdbc:mysql://${module.private_instance.private_instance_ip}:3306/syntro


  [frontend]
  ${module.bastion.bastion_public_ip} ansbible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/pbkey-ges

  [database]
  ${module.private_instance.private_instance_ip} ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/pvkey-ges ansible_ssh_common_args='-o ProxyCommand="ssh -i ~/.ssh/pbkey-ges  -W %h:%p ubuntu@${module.bastion.bastion_public_ip} "'
  EOT

  filename="${path.module}/inventory.ini"
}
