output "public_ip" {
  description = "IP addresses assigned to the instance, if applicable"
  value       = module.this.public_ip
}

output "public_dns" {
  description = "Public DNS names assigned to the instance, if applicable"
  value       = module.this.public_dns
}

output "id" {
  description = "The ID of the instance"
  value       = module.this.id[0]
}

output "user_account_expiration" {
  value = local.user_account_expiration
}
