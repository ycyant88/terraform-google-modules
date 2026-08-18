output "api_s_account" {
  value       = module.project-factory_core_project_factory.api_s_account
  description = "API service account email"
}

output "api_s_account_fmt" {
  value       = module.project-factory_core_project_factory.api_s_account_fmt
  description = "API service account email formatted for terraform use"
}

output "enabled_apis" {
  value       = module.project-factory_core_project_factory.enabled_apis
  description = "Enabled APIs in the project"
}

output "project_bucket_name" {
  value       = module.project-factory_core_project_factory.project_bucket_name
  description = "The name of the projec's bucket"
}

output "project_bucket_self_link" {
  value       = module.project-factory_core_project_factory.project_bucket_self_link
  description = "Project's bucket selfLink"
}

output "project_bucket_url" {
  value       = module.project-factory_core_project_factory.project_bucket_url
  description = "Project's bucket url"
}

output "project_id" {
  value       = module.project-factory_core_project_factory.project_id
  description = ""
}

output "project_name" {
  value       = module.project-factory_core_project_factory.project_name
  description = ""
}

output "project_number" {
  value       = module.project-factory_core_project_factory.project_number
  description = ""
}

output "service_account_display_name" {
  value       = module.project-factory_core_project_factory.service_account_display_name
  description = "The display name of the default service account"
}

output "service_account_email" {
  value       = module.project-factory_core_project_factory.service_account_email
  description = "The email of the default service account"
}

output "service_account_id" {
  value       = module.project-factory_core_project_factory.service_account_id
  description = "The id of the default service account"
}

output "service_account_name" {
  value       = module.project-factory_core_project_factory.service_account_name
  description = "The fully-qualified name of the default service account"
}

output "service_account_unique_id" {
  value       = module.project-factory_core_project_factory.service_account_unique_id
  description = "The unique id of the default service account"
}
