output "console_link" {
  value       = module.log-export_logbucket.console_link
  description = "The console link to the destination log buckets"
}

output "destination_uri" {
  value       = module.log-export_logbucket.destination_uri
  description = "The destination URI for the log bucket."
}

output "project" {
  value       = module.log-export_logbucket.project
  description = "The project in which the log bucket was created."
}

output "resource_name" {
  value       = module.log-export_logbucket.resource_name
  description = "The resource name for the destination log bucket"
}
