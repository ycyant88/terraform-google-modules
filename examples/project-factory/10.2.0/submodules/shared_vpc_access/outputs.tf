output "active_api_service_accounts" {
  value       = module.project-factory.active_api_service_accounts
  description = "List of active API service accounts in the service project."
}

output "project_id" {
  value       = module.project-factory.project_id
  description = "Service project ID."
}
