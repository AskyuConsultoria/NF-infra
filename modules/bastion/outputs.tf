output "bastion_public_ip" {
    value = aws_instance.main-public[*].public_ip
}

output "bastion_instance_id" {
    value = aws_instance.main-public[*].id
}