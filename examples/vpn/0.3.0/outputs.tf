output "gateway_ip" {
  value       = module.vpn.gateway_ip
  description = "The VPN Gateway Public IP"
}

output "ipsec_secret-dynamic" {
  value       = module.vpn.ipsec_secret-dynamic
  description = "The secret"
}

output "ipsec_secret-static" {
  value       = module.vpn.ipsec_secret-static
  description = "The secret"
}

output "name" {
  value       = module.vpn.name
  description = "The name of the Gateway"
}

output "network" {
  value       = module.vpn.network
  description = "The name of the VPC"
}

output "project_id" {
  value       = module.vpn.project_id
  description = "The Project-ID"
}

output "vpn_tunnels_names-dynamic" {
  value       = module.vpn.vpn_tunnels_names-dynamic
  description = "The VPN tunnel name is"
}

output "vpn_tunnels_names-static" {
  value       = module.vpn.vpn_tunnels_names-static
  description = "The VPN tunnel name is"
}
