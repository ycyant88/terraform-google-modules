output "id" {
  value       = module.memorystore_memcache.id
  description = "The memorystore instance ID."
}

output "region" {
  value       = module.memorystore_memcache.region
  description = "The region the instance lives in."
}
