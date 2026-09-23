output "members" {
  value       = module.iam.members
  description = "Members which were bound to organizations."
}

output "organizations" {
  value       = module.iam.organizations
  description = "Organizations which received bindings."
}

output "roles" {
  value       = module.iam.roles
  description = "Roles which were assigned to members."
}
