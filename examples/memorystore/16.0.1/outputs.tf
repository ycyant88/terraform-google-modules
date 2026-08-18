output "apphub_service_uri" {
  value       = module.memorystore.apphub_service_uri
  description = "Service URI in CAIS style to be used by Apphub."
}

output "auth_string" {
  value       = module.memorystore.auth_string
  description = "AUTH String set on the instance. This field will only be populated if auth_enabled is true."
}

output "current_location_id" {
  value       = module.memorystore.current_location_id
  description = "The current zone where the Redis endpoint is placed."
}

output "env_vars" {
  value       = module.memorystore.env_vars
  description = "Exported environment variables"
}

output "host" {
  value       = module.memorystore.host
  description = "The IP address of the instance."
}

output "id" {
  value       = module.memorystore.id
  description = "The memorystore instance ID."
}

output "persistence_iam_identity" {
  value       = module.memorystore.persistence_iam_identity
  description = "Cloud IAM identity used by import/export operations. Format is 'serviceAccount:'. May change over time"
}

output "port" {
  value       = module.memorystore.port
  description = "The port number of the exposed Redis endpoint."
}

output "read_endpoint" {
  value       = module.memorystore.read_endpoint
  description = " The IP address of the exposed readonly Redis endpoint."
}

output "region" {
  value       = module.memorystore.region
  description = "The region the instance lives in."
}

output "server_ca_certs" {
  value       = module.memorystore.server_ca_certs
  description = "List of server CA certificates for the instance"
}
