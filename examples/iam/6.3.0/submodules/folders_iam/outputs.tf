output "folders" {
  value       = module.iam_folders_iam.folders
  description = "Folders which received bindings."
}

output "members" {
  value       = module.iam_folders_iam.members
  description = "Members which were bound to the folders."
}

output "roles" {
  value       = module.iam_folders_iam.roles
  description = "Roles which were assigned to members."
}
