output "api_s_account" {
  value       = module.project-factory.api_s_account
  description = "API service account email"
}

output "api_s_account_fmt" {
  value       = module.project-factory.api_s_account_fmt
  description = "API service account email formatted for terraform use"
}

output "budget_name" {
  value       = module.project-factory.budget_name
  description = "The name of the budget if created"
}

output "domain" {
  value       = module.project-factory.domain
  description = "The organization's domain"
}

output "enabled_api_identities" {
  value       = module.project-factory.enabled_api_identities
  description = "Enabled API identities in the project"
}

output "enabled_apis" {
  value       = module.project-factory.enabled_apis
  description = "Enabled APIs in the project"
}

output "group_email" {
  value       = module.project-factory.group_email
  description = "The email of the G Suite group with group_name"
}

output "project_bucket_self_link" {
  value       = module.project-factory.project_bucket_self_link
  description = "Project's bucket selfLink"
}

output "project_bucket_url" {
  value       = module.project-factory.project_bucket_url
  description = "Project's bucket url"
}

output "project_id" {
  value       = module.project-factory.project_id
  description = "ID of the project"
}

output "project_name" {
  value       = module.project-factory.project_name
  description = "Name of the project"
}

output "project_number" {
  value       = module.project-factory.project_number
  description = "Numeric identifier for the project"
}

output "service_account_display_name" {
  value       = module.project-factory.service_account_display_name
  description = "The display name of the default service account"
}

output "service_account_email" {
  value       = module.project-factory.service_account_email
  description = "The email of the default service account"
}

output "service_account_id" {
  value       = module.project-factory.service_account_id
  description = "The id of the default service account"
}

output "service_account_name" {
  value       = module.project-factory.service_account_name
  description = "The fully-qualified name of the default service account"
}

output "service_account_unique_id" {
  value       = module.project-factory.service_account_unique_id
  description = "The unique id of the default service account"
}
