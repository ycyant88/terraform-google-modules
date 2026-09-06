output "members" {
  value       = module.iam.members
  description = "Members which were bound to the Service Account."
}

output "roles" {
  value       = module.iam.roles
  description = "Roles which were assigned to members."
}

output "service_accounts" {
  value       = module.iam.service_accounts
  description = "Service Accounts which received bindings."
}
