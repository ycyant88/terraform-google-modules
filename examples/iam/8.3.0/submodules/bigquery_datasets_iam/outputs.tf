output "bigquery_datasets" {
  value       = module.iam.bigquery_datasets
  description = "Bigquery dataset IDs which received for bindings."
}

output "members" {
  value       = module.iam.members
  description = "Members which were bound to the bigquery datasets."
}

output "roles" {
  value       = module.iam.roles
  description = "Roles which were assigned to members."
}
