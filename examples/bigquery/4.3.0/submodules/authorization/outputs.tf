output "authorized_roles" {
  value       = module.bigquery_authorization.authorized_roles
  description = "Authorized roles for the dataset"
}

output "authorized_views" {
  value       = module.bigquery_authorization.authorized_views
  description = "Authorized views for the dataset"
}
