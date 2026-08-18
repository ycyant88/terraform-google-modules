output "external_gateway" {
  value       = module.vpn_vpn_ha.external_gateway
  description = "External VPN gateway resource."
}

output "gateway" {
  value       = module.vpn_vpn_ha.gateway
  description = "HA VPN gateway resource."
}

output "name" {
  value       = module.vpn_vpn_ha.name
  description = "VPN gateway name."
}

output "random_secret" {
  value       = module.vpn_vpn_ha.random_secret
  description = "Generated secret."
}

output "router" {
  value       = module.vpn_vpn_ha.router
  description = "Router resource (only if auto-created)."
}

output "router_name" {
  value       = module.vpn_vpn_ha.router_name
  description = "Router name."
}

output "self_link" {
  value       = module.vpn_vpn_ha.self_link
  description = "HA VPN gateway self link."
}

output "tunnel_names" {
  value       = module.vpn_vpn_ha.tunnel_names
  description = "VPN tunnel names."
}

output "tunnel_self_links" {
  value       = module.vpn_vpn_ha.tunnel_self_links
  description = "VPN tunnel self links."
}

output "tunnels" {
  value       = module.vpn_vpn_ha.tunnels
  description = "VPN tunnel resources."
}
