output "authorized_dataset" {
  value       = module.bigquery.authorized_dataset
  description = "Authorized datasets for the BQ dataset"
}

output "authorized_roles" {
  value       = module.bigquery.authorized_roles
  description = "Authorized roles for the dataset"
}

output "authorized_views" {
  value       = module.bigquery.authorized_views
  description = "Authorized views for the dataset"
}
