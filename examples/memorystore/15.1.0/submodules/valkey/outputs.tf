output "discovery_endpoints" {
  value       = module.memorystore_valkey.discovery_endpoints
  description = "(Deprecated) Endpoints created on each given network, for valkey clients to connect to the cluster. Currently only one endpoint is supported. Use endpoints instead"
}

output "endpoints" {
  value       = module.memorystore_valkey.endpoints
  description = "Endpoints for the instance"
}

output "id" {
  value       = module.memorystore_valkey.id
  description = "The valkey cluster instance ID"
}

output "psc_auto_connection" {
  value       = module.memorystore_valkey.psc_auto_connection
  description = "Detailed information of a PSC connection that is created through service connectivity automation"
}

output "psc_connections" {
  value       = module.memorystore_valkey.psc_connections
  description = "(Deprecated) PSC connections for discovery of the cluster topology and accessing the cluster. Use psc_auto_connection instead"
}

output "valkey_cluster" {
  value       = module.memorystore_valkey.valkey_cluster
  description = "The valkey cluster created"
}
