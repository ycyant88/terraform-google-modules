output "query_names" {
  value       = module.bigquery_scheduled_queries.query_names
  description = "The resource names of the transfer config"
}
