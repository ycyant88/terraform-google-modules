output "bucket" {
  value       = module.cloud-storage_simple_bucket.bucket
  description = "The created storage bucket"
}

output "name" {
  value       = module.cloud-storage_simple_bucket.name
  description = "Bucket name."
}

output "url" {
  value       = module.cloud-storage_simple_bucket.url
  description = "Bucket URL."
}
