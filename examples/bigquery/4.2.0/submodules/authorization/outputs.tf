output "authorized_roles" {
  value       = module.bigquery.authorized_roles
  description = "Authorized roles for the dataset"
}

output "authorized_views" {
  value       = module.bigquery.authorized_views
  description = "Authorized views for the dataset"
}
