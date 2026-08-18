output "discovery_endpoints" {
  value       = module.memorystore_redis-cluster.discovery_endpoints
  description = "Endpoints created on each given network, for Redis clients to connect to the cluster. Currently only one endpoint is supported"
}

output "id" {
  value       = module.memorystore_redis-cluster.id
  description = "The redis cluster instance ID"
}

output "psc_connections" {
  value       = module.memorystore_redis-cluster.psc_connections
  description = "PSC connections for discovery of the cluster topology and accessing the cluster"
}

output "redis_cluster" {
  value       = module.memorystore_redis-cluster.redis_cluster
  description = "The redis cluster created"
}
