output "name" {
  value       = module.cloud-storage.name
  description = "Bucket name of the first bucket (for single-use cases)."
}

output "names" {
  value       = module.cloud-storage.names
  description = "Map of unprefixed names => bucket names."
}

output "url" {
  value       = module.cloud-storage.url
  description = "URL of the first bucket (for single-use cases)."
}

output "urls" {
  value       = module.cloud-storage.urls
  description = "Map of unprefixed names => bucket URLs."
}
