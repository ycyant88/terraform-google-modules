output "destination_uri" {
  value       = module.log-export.destination_uri
  description = "The destination URI for project."
}

output "project" {
  value       = module.log-export.project
  description = "The ID of the project to which logs will be routed."
}
