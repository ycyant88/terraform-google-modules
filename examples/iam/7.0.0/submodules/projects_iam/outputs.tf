output "members" {
  value       = module.iam.members
  description = "Members which were bound to projects."
}

output "projects" {
  value       = module.iam.projects
  description = "Projects wich received bindings."
}

output "roles" {
  value       = module.iam.roles
  description = "Roles which were assigned to members."
}
