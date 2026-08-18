output "hostname" {
  value       = module.bastion-host.hostname
  description = "Host name of the bastion"
}

output "ip_address" {
  value       = module.bastion-host.ip_address
  description = "Internal IP address of the bastion host"
}

output "self_link" {
  value       = module.bastion-host.self_link
  description = "Self link of the bastion host"
}

output "service_account" {
  value       = module.bastion-host.service_account
  description = "The email for the service account created for the bastion host"
}
