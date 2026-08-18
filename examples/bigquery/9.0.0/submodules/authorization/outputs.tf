output "authorized_dataset" {
  value       = module.bigquery_authorization.authorized_dataset
  description = "Authorized datasets for the BQ dataset"
}

output "authorized_roles" {
  value       = module.bigquery_authorization.authorized_roles
  description = "Authorized roles for the dataset"
}

output "authorized_views" {
  value       = module.bigquery_authorization.authorized_views
  description = "Authorized views for the dataset"
}
