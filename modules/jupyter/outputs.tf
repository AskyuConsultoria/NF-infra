output "jupyter_public_ip" {
    value = aws_instance.jupyter-instance.public_ip
}