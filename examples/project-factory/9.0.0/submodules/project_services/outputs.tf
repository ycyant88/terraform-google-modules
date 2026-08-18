output "enabled_apis" {
  value       = module.project-factory_project_services.enabled_apis
  description = "Enabled APIs in the project"
}

output "project_id" {
  value       = module.project-factory_project_services.project_id
  description = "The GCP project you want to enable APIs on"
}
