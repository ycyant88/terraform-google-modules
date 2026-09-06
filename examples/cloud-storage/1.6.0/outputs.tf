output "bucket" {
  value       = module.cloud-storage.bucket
  description = "Bucket resource (for single use)."
}

output "buckets" {
  value       = module.cloud-storage.buckets
  description = "Bucket resources."
}

output "name" {
  value       = module.cloud-storage.name
  description = "Bucket name (for single use)."
}

output "names" {
  value       = module.cloud-storage.names
  description = "Bucket names."
}

output "names_list" {
  value       = module.cloud-storage.names_list
  description = "List of bucket names."
}

output "url" {
  value       = module.cloud-storage.url
  description = "Bucket URL (for single use)."
}

output "urls" {
  value       = module.cloud-storage.urls
  description = "Bucket URLs."
}

output "urls_list" {
  value       = module.cloud-storage.urls_list
  description = "List of bucket URLs."
}
