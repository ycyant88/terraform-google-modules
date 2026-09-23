output "billing_account_ids" {
  value       = module.iam.billing_account_ids
  description = "Billing Accounts which received bindings."
}

output "members" {
  value       = module.iam.members
  description = "Members which were bound to the billing accounts."
}

output "roles" {
  value       = module.iam.roles
  description = "Roles which were assigned to members."
}
