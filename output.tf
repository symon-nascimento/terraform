output "ip_dns_virginia" {
  value = aws_instance.server_virginia.public_ip
}

output "ip_dns_ohio" {
  value = aws_instance.server_ohio.public_ip
}

