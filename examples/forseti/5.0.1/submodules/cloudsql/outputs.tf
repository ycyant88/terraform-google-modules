output "forseti-clodusql-db-port" {
  value       = module.forseti_cloudsql.forseti-clodusql-db-port
  description = "CloudSQL database port"
}

output "forseti-cloudsql-connection-name" {
  value       = module.forseti_cloudsql.forseti-cloudsql-connection-name
  description = "The connection string to the CloudSQL instance"
}

output "forseti-cloudsql-db-name" {
  value       = module.forseti_cloudsql.forseti-cloudsql-db-name
  description = "CloudSQL region"
}

output "forseti-cloudsql-instance-name" {
  value       = module.forseti_cloudsql.forseti-cloudsql-instance-name
  description = "The name of the master CloudSQL instance"
}

output "forseti-cloudsql-region" {
  value       = module.forseti_cloudsql.forseti-cloudsql-region
  description = "CloudSQL region"
}
