output "id" {
  value       = module.memorystore.id
  description = "The memorystore instance ID."
}

output "nodes" {
  value       = module.memorystore.nodes
  description = "Data about the memcache nodes"
}

output "region" {
  value       = module.memorystore.region
  description = "The region the instance lives in."
}
