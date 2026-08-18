output "dns_zone_gcr_name" {
  value       = module.network_private-service-connect.dns_zone_gcr_name
  description = "Name for Managed DNS zone for GCR"
}

output "dns_zone_googleapis_name" {
  value       = module.network_private-service-connect.dns_zone_googleapis_name
  description = "Name for Managed DNS zone for GoogleAPIs"
}

output "dns_zone_pkg_dev_name" {
  value       = module.network_private-service-connect.dns_zone_pkg_dev_name
  description = "Name for Managed DNS zone for PKG_DEV"
}

output "forwarding_rule_name" {
  value       = module.network_private-service-connect.forwarding_rule_name
  description = "Forwarding rule resource name."
}

output "forwarding_rule_target" {
  value       = module.network_private-service-connect.forwarding_rule_target
  description = "Target resource to receive the matched traffic. Only all-apis and vpc-sc are valid."
}

output "global_address_id" {
  value       = module.network_private-service-connect.global_address_id
  description = "An identifier for the global address created for the private service connect with format projects/{{project}}/global/addresses/{{name}}"
}

output "private_service_connect_ip" {
  value       = module.network_private-service-connect.private_service_connect_ip
  description = "Private service connect ip"
}

output "private_service_connect_name" {
  value       = module.network_private-service-connect.private_service_connect_name
  description = "Private service connect name"
}
