output "members" {
  value       = module.iam_artifact_registry_iam.members
  description = "Members which were bound to artifact registry repositories."
}

output "repositories" {
  value       = module.iam_artifact_registry_iam.repositories
  description = "Artifact registry repositories which received bindings."
}

output "roles" {
  value       = module.iam_artifact_registry_iam.roles
  description = "Roles which were assigned to members."
}
