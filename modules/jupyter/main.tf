resource "aws_instance" "jupyter-instance" {
  ami                         = var.ami
  instance_type               = var.jupyter_instance_type
  associate_public_ip_address = true
  key_name        = var.pbkey_jupyter_name
  security_groups = var.security_groups
  subnet_id       = element(var.public_subnet_id, 0) 
  iam_instance_profile = "LabInstanceProfile"
  user_data = var.user_data

  tags = {
    Name = "instancia-jupyter"
  }
}