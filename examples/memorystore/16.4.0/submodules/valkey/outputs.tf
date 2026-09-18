output "apphub_service_uri" {
  value       = module.memorystore.apphub_service_uri
  description = "Service URI in CAIS style to be used by Apphub."
}

output "available_maintenance_versions" {
  value       = module.memorystore.available_maintenance_versions
  description = "This field is used to determine the available maintenance versions for the self service update"
}

output "discovery_endpoints" {
  value       = module.memorystore.discovery_endpoints
  description = "(Deprecated) Endpoints created on each given network, for valkey clients to connect to the cluster. Currently only one endpoint is supported. Use endpoints instead"
}

output "endpoints" {
  value       = module.memorystore.endpoints
  description = "Endpoints for the instance"
}

output "env_vars" {
  value       = module.memorystore.env_vars
  description = "Environment variables for Valkey instance connection, including address and port."
}

output "id" {
  value       = module.memorystore.id
  description = "The valkey cluster instance ID"
}

output "psc_auto_connection" {
  value       = module.memorystore.psc_auto_connection
  description = "Detailed information of a PSC connection that is created through service connectivity automation"
}

output "psc_connections" {
  value       = module.memorystore.psc_connections
  description = "(Deprecated) PSC connections for discovery of the cluster topology and accessing the cluster. Use psc_auto_connection instead"
}

output "valkey_cluster" {
  value       = module.memorystore.valkey_cluster
  description = "The valkey cluster created"
}
