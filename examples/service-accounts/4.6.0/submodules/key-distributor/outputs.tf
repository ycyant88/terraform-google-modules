output "function_name" {
  value       = module.service-accounts_key-distributor.function_name
  description = "The name for the Cloud Function."
}

output "project_id" {
  value       = module.service-accounts_key-distributor.project_id
  description = "The project id for the Cloud Function."
}

output "region" {
  value       = module.service-accounts_key-distributor.region
  description = "The region for the Cloud Function"
}
