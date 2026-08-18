output "config_id" {
  value       = module.endpoints-dns.config_id
  description = "The rollout config ID for the endpoint service."
}

output "endpoint" {
  value       = module.endpoints-dns.endpoint
  description = "The name of the DNS record conventional to the Cloud Endpoints format of: NAME.endpoints.PROJECT.cloud.goog. Not dependent on google_endpoints_service resource."
}

output "endpoint_computed" {
  value       = module.endpoints-dns.endpoint_computed
  description = "The address of the cloud endpoint. This is computed from the google_endpoints_service resource and can be used to create dependencies between resources."
}

output "external_ip" {
  value       = module.endpoints-dns.external_ip
  description = "The value of the external IP the endpoint points to."
}

output "name" {
  value       = module.endpoints-dns.name
  description = "Name of the cloud endpoints service."
}

output "project" {
  value       = module.endpoints-dns.project
  description = "The project where the cloud endpoint was created."
}
