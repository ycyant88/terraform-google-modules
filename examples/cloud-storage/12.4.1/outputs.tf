output "apphub_service_uri" {
  value       = module.cloud-storage.apphub_service_uri
  description = "URI in CAIS style to be used by Apphub."
}

output "bucket" {
  value       = module.cloud-storage.bucket
  description = "Bucket resource (for single use)."
}

output "buckets" {
  value       = module.cloud-storage.buckets
  description = "Bucket resources as list."
}

output "buckets_map" {
  value       = module.cloud-storage.buckets_map
  description = "Bucket resources by name."
}

output "hmac_keys" {
  value       = module.cloud-storage.hmac_keys
  description = "List of HMAC keys."
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
