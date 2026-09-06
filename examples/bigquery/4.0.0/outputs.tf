output "bigquery_dataset" {
  value       = module.bigquery.bigquery_dataset
  description = "Bigquery dataset resource."
}

output "bigquery_tables" {
  value       = module.bigquery.bigquery_tables
  description = "Map of bigquery table resources being provisioned."
}

output "project" {
  value       = module.bigquery.project
  description = "Project where the dataset and tables are created"
}

output "table_ids" {
  value       = module.bigquery.table_ids
  description = "Unique id for the table being provisioned"
}

output "table_names" {
  value       = module.bigquery.table_names
  description = "Unique id for the table being provisioned"
}
