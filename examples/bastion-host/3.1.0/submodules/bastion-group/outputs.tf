output "instance_group" {
  value       = module.bastion-host.instance_group
  description = "Instance-group url of managed instance group"
}

output "self_link" {
  value       = module.bastion-host.self_link
  description = "Name of the bastion MIG"
}

output "service_account" {
  value       = module.bastion-host.service_account
  description = "The email for the service account created for the bastion host"
}
