output "console_link" {
  value       = module.log-export_bigquery.console_link
  description = "The console link to the destination bigquery dataset"
}

output "destination_uri" {
  value       = module.log-export_bigquery.destination_uri
  description = "The destination URI for the bigquery dataset."
}

output "project" {
  value       = module.log-export_bigquery.project
  description = "The project in which the bigquery dataset was created."
}

output "resource_id" {
  value       = module.log-export_bigquery.resource_id
  description = "The resource id for the destination bigquery dataset"
}

output "resource_name" {
  value       = module.log-export_bigquery.resource_name
  description = "The resource name for the destination bigquery dataset"
}

output "self_link" {
  value       = module.log-export_bigquery.self_link
  description = "The self_link URI for the destination bigquery dataset"
}
