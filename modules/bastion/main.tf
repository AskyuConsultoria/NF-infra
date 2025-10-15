resource "aws_instance" "main-public" {
  count = 2
  ami                         = var.ami
  instance_type               = var.bastion_instance_type
  associate_public_ip_address = true
  key_name        = var.pbkey_name
  security_groups = var.security_groups
  subnet_id       = element(var.public_subnet_id, count.index) 
  iam_instance_profile = "LabInstanceProfile"

  tags = {
    Name = "instancia-publica-${count.index + 1}"
  } 
}

