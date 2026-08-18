output "forseti-cloudsql-connection-name" {
  value       = module.forseti_server.forseti-cloudsql-connection-name
  description = "The connection string to the CloudSQL instance"
}

output "forseti-server-service-account" {
  value       = module.forseti_server.forseti-server-service-account
  description = "Forseti Server service account"
}

output "forseti-server-storage-bucket" {
  value       = module.forseti_server.forseti-server-storage-bucket
  description = "Forseti Server storage bucket"
}

output "forseti-server-vm-ip" {
  value       = module.forseti_server.forseti-server-vm-ip
  description = "Forseti Server VM private IP address"
}

output "forseti-server-vm-name" {
  value       = module.forseti_server.forseti-server-vm-name
  description = "Forseti Server VM name"
}
