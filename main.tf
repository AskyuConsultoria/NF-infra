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

module "api-gateway"{
  source = "./modules/api-gateway"
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

output "bastion_public_ip" {
  value = module.bastion.bastion_public_ip
}

output "private_instance_ip" {
  value = module.private_instance.private_instance_ip
}

output "api_gateway_url" {
  value = module.api-gateway.api_gateway_url
}
