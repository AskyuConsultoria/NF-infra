resource "aws_instance" "main-backend" {
  ami           = var.ami
  instance_type = var.private_instance_type
  key_name        = var.pvkey_name
  security_groups = var.security_groups
  subnet_id       = var.db_subnet_id 

  tags = {
    Name = "instancia-db"
  }

}
