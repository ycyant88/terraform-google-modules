output "function_name" {
  value       = module.service-accounts.function_name
  description = "The name for the Cloud Function."
}

output "project_id" {
  value       = module.service-accounts.project_id
  description = "The project id for the Cloud Function."
}

output "region" {
  value       = module.service-accounts.region
  description = "The region for the Cloud Function"
}
