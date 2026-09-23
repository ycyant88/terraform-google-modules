output "project_id" {
  value       = module.iam.project_id
  description = "Project id."
}

output "roles" {
  value       = module.iam.roles
  description = "Project roles."
}
