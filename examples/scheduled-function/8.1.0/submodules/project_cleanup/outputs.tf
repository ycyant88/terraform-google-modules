output "name" {
  value       = module.scheduled-function.name
  description = "The name of the job created"
}

output "project_id" {
  value       = module.scheduled-function.project_id
  description = "The project ID"
}
