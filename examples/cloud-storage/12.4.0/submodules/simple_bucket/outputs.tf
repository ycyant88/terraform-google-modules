output "apphub_service_uri" {
  value       = module.cloud-storage.apphub_service_uri
  description = "URI in CAIS style to be used by Apphub."
}

output "bucket" {
  value       = module.cloud-storage.bucket
  description = "The created storage bucket"
}

output "internal_kms_configuration" {
  value       = module.cloud-storage.internal_kms_configuration
  description = "The intenal KMS Resource."
}

output "name" {
  value       = module.cloud-storage.name
  description = "Bucket name."
}

output "url" {
  value       = module.cloud-storage.url
  description = "Bucket URL."
}
