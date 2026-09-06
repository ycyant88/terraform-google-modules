output "bucket" {
  value       = module.cloud-storage.bucket
  description = "The created storage bucket"
}

output "name" {
  value       = module.cloud-storage.name
  description = "Bucket name."
}

output "url" {
  value       = module.cloud-storage.url
  description = "Bucket URL."
}
