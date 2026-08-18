output "address_id" {
  value       = module.network_private-service-connect-endpoints-for-published-services.address_id
  description = "Private Service Connect address ID with format projects/{$project}/regions/{$region}/addresses/{$name}."
}

output "address_name" {
  value       = module.network_private-service-connect-endpoints-for-published-services.address_name
  description = "Private Service Connect address name."
}

output "address_self_link" {
  value       = module.network_private-service-connect-endpoints-for-published-services.address_self_link
  description = "Private Service Connect address self link with format https://www.googleapis.com/compute/v1/projects/{$project}/regions/{$region}/addresses/{$name}."
}

output "forwarding_rule_id" {
  value       = module.network_private-service-connect-endpoints-for-published-services.forwarding_rule_id
  description = "Private Service Connect forwarding rule ID with format projects/{$project}/regions/{$region}/forwardingRules/{$name}."
}

output "forwarding_rule_name" {
  value       = module.network_private-service-connect-endpoints-for-published-services.forwarding_rule_name
  description = "Private Service Connect forwarding rule resource name."
}

output "forwarding_rule_self_link" {
  value       = module.network_private-service-connect-endpoints-for-published-services.forwarding_rule_self_link
  description = "Private Service Connect forwarding rule self link with format https://www.googleapis.com/compute/v1/projects/{$project}/regions/{$region}/forwardingRules/{$name}."
}

output "ip_address" {
  value       = module.network_private-service-connect-endpoints-for-published-services.ip_address
  description = "Private Service Connect IP address."
}
