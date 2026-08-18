output "domain" {
  value       = module.project-factory_shared_vpc.domain
  description = "The organization's domain"
}

output "group_email" {
  value       = module.project-factory_shared_vpc.group_email
  description = "The email of the GSuite group with group_name"
}

output "project_bucket_self_link" {
  value       = module.project-factory_shared_vpc.project_bucket_self_link
  description = "Project's bucket selfLink"
}

output "project_bucket_url" {
  value       = module.project-factory_shared_vpc.project_bucket_url
  description = "Project's bucket url"
}

output "project_id" {
  value       = module.project-factory_shared_vpc.project_id
  description = "If provided, the project uses the given project ID. Mutually exclusive with random_project_id being true."
}

output "project_name" {
  value       = module.project-factory_shared_vpc.project_name
  description = "The name for the project"
}

output "project_number" {
  value       = module.project-factory_shared_vpc.project_number
  description = "The number for the project"
}

output "service_account_display_name" {
  value       = module.project-factory_shared_vpc.service_account_display_name
  description = "The display name of the default service account"
}

output "service_account_email" {
  value       = module.project-factory_shared_vpc.service_account_email
  description = "The email of the default service account"
}

output "service_account_id" {
  value       = module.project-factory_shared_vpc.service_account_id
  description = "The id of the default service account"
}

output "service_account_name" {
  value       = module.project-factory_shared_vpc.service_account_name
  description = "The fully-qualified name of the default service account"
}

output "service_account_unique_id" {
  value       = module.project-factory_shared_vpc.service_account_unique_id
  description = "The unique id of the default service account"
}
