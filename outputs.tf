output "public_ip" {
  description = "IP addresses assigned to the instance, if applicable"
  value       = aws_instance.server.public_ip
}

output "public_dns" {
  description = "Public DNS names assigned to the instance, if applicable"
  value       = aws_instance.server.public_dns
}

output "user_account_expiration" {
  value = local.user_account_expiration
}
