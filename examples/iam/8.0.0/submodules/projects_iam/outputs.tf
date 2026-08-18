output "members" {
  value       = module.iam_projects_iam.members
  description = "Members which were bound to projects."
}

output "projects" {
  value       = module.iam_projects_iam.projects
  description = "Projects wich received bindings."
}

output "roles" {
  value       = module.iam_projects_iam.roles
  description = "Roles which were assigned to members."
}
