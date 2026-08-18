output "members" {
  value       = module.iam_organizations_iam.members
  description = "Members which were bound to organizations."
}

output "organizations" {
  value       = module.iam_organizations_iam.organizations
  description = "Organizations which received bindings."
}

output "roles" {
  value       = module.iam_organizations_iam.roles
  description = "Roles which were assigned to members."
}
