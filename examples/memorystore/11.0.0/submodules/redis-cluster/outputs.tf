output "discovery_endpoints" {
  value       = module.memorystore.discovery_endpoints
  description = "Endpoints created on each given network, for Redis clients to connect to the cluster. Currently only one endpoint is supported"
}

output "id" {
  value       = module.memorystore.id
  description = "The redis cluster instance ID"
}

output "psc_connections" {
  value       = module.memorystore.psc_connections
  description = "PSC connections for discovery of the cluster topology and accessing the cluster"
}

output "redis_cluster" {
  value       = module.memorystore.redis_cluster
  description = "The redis cluster created"
}
