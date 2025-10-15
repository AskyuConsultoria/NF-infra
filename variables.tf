
variable "pvkey_name" {}
variable "pbkey_name" {}
variable "pbkey_jupyter_name" {}
variable "aws_region" {
  default = "us-east-1"
}

variable "pbkey-ges-pub" {}
variable "pvkey-ges-pub" {}
variable "pbkey-jupyter-pub" {}


variable "aws_access_key_id" {}
variable "aws_secret_access_key" {}
variable "aws_session_token" {}
variable "environment" {
  default = "askyu-syntro"
}

variable "vpc_cidr_block" {
  description = "CIDR da VPC"
  type        = string
}


variable "public_subnet_cidr" {
  type = list(any)
  description = "CIDR da Subnet Pública"
}

variable "private_subnet_cidr" {
  type = list(any)
  description = "CIDR da Subnet Privada"
}

variable "private_subnet_cidr_db" {
  type = string
  description = "CIDR da Subnet Privada"
}

variable "ami" {}
variable "bastion_instance_type" {}
variable "private_instance_type" {}
variable "jupyter_instance_type" {}
