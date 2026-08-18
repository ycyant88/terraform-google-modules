output "destination_uri" {
  value       = module.log-export_project.destination_uri
  description = "The destination URI for project."
}

output "project" {
  value       = module.log-export_project.project
  description = "The ID of the project to which logs will be routed."
}
