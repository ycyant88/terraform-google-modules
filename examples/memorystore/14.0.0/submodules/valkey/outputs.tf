output "discovery_endpoints" {
  value       = module.memorystore_valkey.discovery_endpoints
  description = "Endpoints created on each given network, for valkey clients to connect to the cluster. Currently only one endpoint is supported"
}

output "id" {
  value       = module.memorystore_valkey.id
  description = "The valkey cluster instance ID"
}

output "psc_connections" {
  value       = module.memorystore_valkey.psc_connections
  description = "PSC connections for discovery of the cluster topology and accessing the cluster"
}

output "valkey_cluster" {
  value       = module.memorystore_valkey.valkey_cluster
  description = "The valkey cluster created"
}
