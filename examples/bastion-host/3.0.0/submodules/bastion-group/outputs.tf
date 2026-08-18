output "instance_group" {
  value       = module.bastion-host_bastion-group.instance_group
  description = "Instance-group url of managed instance group"
}

output "self_link" {
  value       = module.bastion-host_bastion-group.self_link
  description = "Name of the bastion MIG"
}

output "service_account" {
  value       = module.bastion-host_bastion-group.service_account
  description = "The email for the service account created for the bastion host"
}
