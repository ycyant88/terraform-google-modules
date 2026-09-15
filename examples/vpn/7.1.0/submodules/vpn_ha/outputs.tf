output "external_gateway" {
  value       = module.vpn.external_gateway
  description = "External VPN gateway resource."
}

output "gateway" {
  value       = module.vpn.gateway
  description = "HA VPN gateway resource."
}

output "name" {
  value       = module.vpn.name
  description = "VPN gateway name."
}

output "random_secret" {
  value       = module.vpn.random_secret
  description = "Generated secret."
}

output "router" {
  value       = module.vpn.router
  description = "Router resource (only if auto-created)."
}

output "router_name" {
  value       = module.vpn.router_name
  description = "Router name."
}

output "self_link" {
  value       = module.vpn.self_link
  description = "HA VPN gateway self link."
}

output "tunnel_names" {
  value       = module.vpn.tunnel_names
  description = "VPN tunnel names."
}

output "tunnel_self_links" {
  value       = module.vpn.tunnel_self_links
  description = "VPN tunnel self links."
}

output "tunnels" {
  value       = module.vpn.tunnels
  description = "VPN tunnel resources."
}
