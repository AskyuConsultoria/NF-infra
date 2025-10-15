output "private_instance_ip" {
    value = aws_instance.main-backend[*].private_ip
}

