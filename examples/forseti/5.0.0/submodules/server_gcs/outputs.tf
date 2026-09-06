output "forseti-cai-bucket-enabled" {
  value       = module.forseti.forseti-cai-bucket-enabled
  description = "Whether or not the GCS bucket for CAI exports is enabled"
}

output "forseti-cai-storage-bucket" {
  value       = module.forseti.forseti-cai-storage-bucket
  description = "Forseti CAI storage bucket"
}

output "forseti-server-storage-bucket" {
  value       = module.forseti.forseti-server-storage-bucket
  description = "Forseti Server storage bucket"
}
