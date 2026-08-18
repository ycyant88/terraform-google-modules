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
  description = "Forseti Client VM ip address"
}

output "forseti-client-vm-name" {
  value       = module.forseti_client.forseti-client-vm-name
  description = "Forseti Client VM name"
}
