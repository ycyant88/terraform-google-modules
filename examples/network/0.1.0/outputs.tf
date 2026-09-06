output "network_name" {
  value       = module.network.network_name
  description = "The name of the VPC being created"
}

output "subnets_ips" {
  value       = module.network.subnets_ips
  description = "The IP and cidrs of the subnets being created"
}

output "subnets_names" {
  value       = module.network.subnets_names
  description = "The names of the subnets being created"
}

output "subnets_private_access" {
  value       = module.network.subnets_private_access
  description = "Whether the subnets will have access to Google API's without a public IP"
}

output "subnets_regions" {
  value       = module.network.subnets_regions
  description = "The region where the subnets will be created"
}

output "subnets_secondary_ranges" {
  value       = module.network.subnets_secondary_ranges
  description = "The secondary ranges associated with these subnets"
}
