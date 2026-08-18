output "domain" {
  value       = module.project-factory_gsuite_enabled.domain
  description = "The organization's domain"
}

output "group_email" {
  value       = module.project-factory_gsuite_enabled.group_email
  description = "The email of the created G Suite group with group_name"
}

output "group_name" {
  value       = module.project-factory_gsuite_enabled.group_name
  description = "The group_name of the G Suite group"
}

output "project_bucket_self_link" {
  value       = module.project-factory_gsuite_enabled.project_bucket_self_link
  description = "Project's bucket selfLink"
}

output "project_bucket_url" {
  value       = module.project-factory_gsuite_enabled.project_bucket_url
  description = "Project's bucket url"
}

output "project_id" {
  value       = module.project-factory_gsuite_enabled.project_id
  description = "ID of the project"
}

output "project_name" {
  value       = module.project-factory_gsuite_enabled.project_name
  description = "Name of the project"
}

output "project_number" {
  value       = module.project-factory_gsuite_enabled.project_number
  description = "Numeric identifier for the project"
}

output "service_account_display_name" {
  value       = module.project-factory_gsuite_enabled.service_account_display_name
  description = "The display name of the default service account"
}

output "service_account_email" {
  value       = module.project-factory_gsuite_enabled.service_account_email
  description = "The email of the default service account"
}

output "service_account_id" {
  value       = module.project-factory_gsuite_enabled.service_account_id
  description = "The id of the default service account"
}

output "service_account_name" {
  value       = module.project-factory_gsuite_enabled.service_account_name
  description = "The fully-qualified name of the default service account"
}

output "service_account_unique_id" {
  value       = module.project-factory_gsuite_enabled.service_account_unique_id
  description = "The unique id of the default service account"
}
