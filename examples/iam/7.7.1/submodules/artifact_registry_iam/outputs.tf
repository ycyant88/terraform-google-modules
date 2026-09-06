output "members" {
  value       = module.iam.members
  description = "Members which were bound to artifact registry repositories."
}

output "repositories" {
  value       = module.iam.repositories
  description = "Artifact registry repositories which received bindings."
}

output "roles" {
  value       = module.iam.roles
  description = "Roles which were assigned to members."
}
