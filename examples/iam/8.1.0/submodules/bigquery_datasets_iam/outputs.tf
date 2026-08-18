output "bigquery_datasets" {
  value       = module.iam_bigquery_datasets_iam.bigquery_datasets
  description = "Bigquery dataset IDs which received for bindings."
}

output "members" {
  value       = module.iam_bigquery_datasets_iam.members
  description = "Members which were bound to the bigquery datasets."
}

output "roles" {
  value       = module.iam_bigquery_datasets_iam.roles
  description = "Roles which were assigned to members."
}
