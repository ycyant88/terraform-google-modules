output "members" {
  value       = module.iam_service_accounts_iam.members
  description = "Members which were bound to the Service Account."
}

output "roles" {
  value       = module.iam_service_accounts_iam.roles
  description = "Roles which were assigned to members."
}

output "service_accounts" {
  value       = module.iam_service_accounts_iam.service_accounts
  description = "Service Accounts which received bindings."
}
