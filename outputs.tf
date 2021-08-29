output "ip" {
  value = aws_instance.bastion.public_ip
}

output "dns" {
  value = aws_instance.bastion.public_dns
}

output "ssh_connection_string" {
  value = "ssh ec2-user@${aws_instance.bastion.public_dns}"
}

