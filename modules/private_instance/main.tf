resource "aws_instance" "main-backend" {
  count = 2 
  ami           = var.ami
  instance_type = var.private_instance_type
  key_name        = var.pvkey_name
  security_groups = var.security_groups
  subnet_id       = element(var.private_subnet_id, count.index) 
  iam_instance_profile = "LabInstanceProfile"

  tags = {
    Name = "instancia-privada-${count.index + 1}"
  }
}    
