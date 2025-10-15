variable "pbkey-ges-pub" {}
variable "pvkey-ges-pub" {}
variable "pbkey-jupyter-pub" {}

resource "aws_key_pair" "main-public" {
  key_name   = "pbkey-ges"
  public_key = var.pbkey-ges-pub
}

resource "aws_key_pair" "main-backend" {
  key_name   = "pvkey-ges"
  public_key = var.pvkey-ges-pub
}

resource "aws_key_pair" "jupyter" {
  key_name   = "pbkey-jupyter"
  public_key = var.pbkey-jupyter-pub
}
