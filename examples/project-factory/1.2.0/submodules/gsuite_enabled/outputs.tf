output "app_engine_enabled" {
  value       = module.project-factory.app_engine_enabled
  description = "Whether app engine is enabled"
}

output "domain" {
  value       = module.project-factory.domain
  description = "The organization's domain"
}

output "group_email" {
  value       = module.project-factory.group_email
  description = "The email of the created GSuite group with group_name"
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
  description = ""
}

output "project_number" {
  value       = module.project-factory.project_number
  description = ""
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
