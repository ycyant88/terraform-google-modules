output "forseti-rt-enforcer-service-account" {
  value       = module.forseti_real_time_enforcer.forseti-rt-enforcer-service-account
  description = "Forseti Enforcer service account"
}

output "forseti-rt-enforcer-storage-bucket" {
  value       = module.forseti_real_time_enforcer.forseti-rt-enforcer-storage-bucket
  description = "Forseti Enforcer storage bucket"
}

output "forseti-rt-enforcer-vm-ip" {
  value       = module.forseti_real_time_enforcer.forseti-rt-enforcer-vm-ip
  description = "Forseti Enforcer VM private IP address"
}

output "forseti-rt-enforcer-vm-name" {
  value       = module.forseti_real_time_enforcer.forseti-rt-enforcer-vm-name
  description = "Forseti Enforcer VM name"
}

output "forseti-rt-enforcer-vm-public-ip" {
  value       = module.forseti_real_time_enforcer.forseti-rt-enforcer-vm-public-ip
  description = "Forseti Enforcer VM public IP address"
}
