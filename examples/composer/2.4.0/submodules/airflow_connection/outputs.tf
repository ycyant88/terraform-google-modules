output "wait" {
  value       = module.composer_airflow_connection.wait
  description = "An output to use when you want to depend on cmd finishing"
}
