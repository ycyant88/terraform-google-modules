output "forseti-client-storage-bucket" {
  value       = module.forseti_client_gcs.forseti-client-storage-bucket
  description = "Forseti Client storage bucket"
}
