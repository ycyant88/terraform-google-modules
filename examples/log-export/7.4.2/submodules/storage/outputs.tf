output "console_link" {
  value       = module.log-export_storage.console_link
  description = "The console link to the destination storage bucket"
}

output "destination_uri" {
  value       = module.log-export_storage.destination_uri
  description = "The destination URI for the storage bucket."
}

output "project" {
  value       = module.log-export_storage.project
  description = "The project in which the storage bucket was created."
}

output "resource_id" {
  value       = module.log-export_storage.resource_id
  description = "The resource id for the destination storage bucket"
}

output "resource_name" {
  value       = module.log-export_storage.resource_name
  description = "The resource name for the destination storage bucket"
}

output "self_link" {
  value       = module.log-export_storage.self_link
  description = "The self_link URI for the destination storage bucket"
}
