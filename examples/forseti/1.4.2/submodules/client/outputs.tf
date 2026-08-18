output "forseti-client-service-account" {
  value       = module.forseti_client.forseti-client-service-account
  description = "Forseti Client service account"
}

output "forseti-client-storage-bucket" {
  value       = module.forseti_client.forseti-client-storage-bucket
  description = "Forseti Client storage bucket"
}

output "forseti-client-vm-ip" {
  value       = module.forseti_client.forseti-client-vm-ip
  description = "Forseti Client VM private IP address"
}

output "forseti-client-vm-name" {
  value       = module.forseti_client.forseti-client-vm-name
  description = "Forseti Client VM name"
}

output "forseti-client-vm-public-ip" {
  value       = module.forseti_client.forseti-client-vm-public-ip
  description = "Forseti Client VM public IP address"
}
