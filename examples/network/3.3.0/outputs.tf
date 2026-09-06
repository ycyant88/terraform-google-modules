output "network" {
  value       = module.network.network
  description = "The created network"
}

output "network_name" {
  value       = module.network.network_name
  description = "The name of the VPC being created"
}

output "network_self_link" {
  value       = module.network.network_self_link
  description = "The URI of the VPC being created"
}

output "project_id" {
  value       = module.network.project_id
  description = "VPC project id"
}

output "route_names" {
  value       = module.network.route_names
  description = "The route names associated with this VPC"
}

output "subnets" {
  value       = module.network.subnets
  description = "A map with keys of form subnet_region/subnet_name and values being the outputs of the google_compute_subnetwork resources used to create corresponding subnets."
}

output "subnets_flow_logs" {
  value       = module.network.subnets_flow_logs
  description = "Whether the subnets will have VPC flow logs enabled"
}

output "subnets_ids" {
  value       = module.network.subnets_ids
  description = "The IDs of the subnets being created"
}

output "subnets_ips" {
  value       = module.network.subnets_ips
  description = "The IPs and CIDRs of the subnets being created"
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

output "subnets_self_links" {
  value       = module.network.subnets_self_links
  description = "The self-links of subnets being created"
}
