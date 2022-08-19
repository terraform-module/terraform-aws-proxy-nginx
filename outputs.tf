output "public_ip" {
  description = "IP addresses assigned to the instance, if applicable"
  value       = aws_instance.server.public_ip
}

output "public_dns" {
  description = "Public DNS names assigned to the instance, if applicable"
  value       = aws_instance.server.public_dns
}

output "id" {
  description = "The ID of the instance"
  value       = aws_instance.server.id
}

output "user_account_expiration" {
  value = local.user_account_expiration
}
