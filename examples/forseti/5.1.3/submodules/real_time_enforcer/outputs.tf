output "forseti-rt-enforcer-service-account" {
  value       = module.forseti.forseti-rt-enforcer-service-account
  description = "Forseti Enforcer service account"
}

output "forseti-rt-enforcer-storage-bucket" {
  value       = module.forseti.forseti-rt-enforcer-storage-bucket
  description = "Forseti Enforcer storage bucket"
}

output "forseti-rt-enforcer-vm-ip" {
  value       = module.forseti.forseti-rt-enforcer-vm-ip
  description = "Forseti Enforcer VM private IP address"
}

output "forseti-rt-enforcer-vm-name" {
  value       = module.forseti.forseti-rt-enforcer-vm-name
  description = "Forseti Enforcer VM name"
}
