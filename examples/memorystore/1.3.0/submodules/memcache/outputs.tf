output "id" {
  value       = module.memorystore.id
  description = "The memorystore instance ID."
}

output "region" {
  value       = module.memorystore.region
  description = "The region the instance lives in."
}
