output "folders" {
  value       = module.iam.folders
  description = "Folders which received bindings."
}

output "members" {
  value       = module.iam.members
  description = "Members which were bound to the folders."
}

output "roles" {
  value       = module.iam.roles
  description = "Roles which were assigned to members."
}
