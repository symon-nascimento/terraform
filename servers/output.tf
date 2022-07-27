output "ip_dns_virginia" {
  value = aws_instance.server_virginia.*.public_ip
}

