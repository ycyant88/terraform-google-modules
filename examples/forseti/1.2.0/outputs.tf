output "forseti-client-service-account" {
  value       = module.forseti.forseti-client-service-account
  description = "Forseti Client service account"
}

output "forseti-client-storage-bucket" {
  value       = module.forseti.forseti-client-storage-bucket
  description = "Forseti Client storage bucket"
}

output "forseti-client-vm-ip" {
  value       = module.forseti.forseti-client-vm-ip
  description = "Forseti Client VM private IP address"
}

output "forseti-client-vm-name" {
  value       = module.forseti.forseti-client-vm-name
  description = "Forseti Client VM name"
}

output "forseti-client-vm-public-ip" {
  value       = module.forseti.forseti-client-vm-public-ip
  description = "Forseti Server VM public IP address"
}

output "forseti-server-service-account" {
  value       = module.forseti.forseti-server-service-account
  description = "Forseti Server service account"
}

output "forseti-server-storage-bucket" {
  value       = module.forseti.forseti-server-storage-bucket
  description = "Forseti Server storage bucket"
}

output "forseti-server-vm-ip" {
  value       = module.forseti.forseti-server-vm-ip
  description = "Forseti Server VM private IP address"
}

output "forseti-server-vm-name" {
  value       = module.forseti.forseti-server-vm-name
  description = "Forseti Server VM name"
}

output "forseti-server-vm-public-ip" {
  value       = module.forseti.forseti-server-vm-public-ip
  description = "Forseti Server VM public IP address"
}
