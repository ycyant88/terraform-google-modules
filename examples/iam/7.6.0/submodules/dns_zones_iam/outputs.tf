output "managed_zones" {
  value       = module.iam.managed_zones
  description = "DNS Managed Zones which received for bindings."
}

output "members" {
  value       = module.iam.members
  description = "Members which were bound to the bigquery datasets."
}

output "roles" {
  value       = module.iam.roles
  description = "Roles which were assigned to members."
}
