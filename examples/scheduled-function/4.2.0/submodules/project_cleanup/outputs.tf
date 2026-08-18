output "name" {
  value       = module.scheduled-function_project_cleanup.name
  description = "The name of the job created"
}

output "project_id" {
  value       = module.scheduled-function_project_cleanup.project_id
  description = "The project ID"
}
