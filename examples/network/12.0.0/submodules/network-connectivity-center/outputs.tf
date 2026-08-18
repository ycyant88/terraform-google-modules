output "hybrid_spokes" {
  value       = module.network_network-connectivity-center.hybrid_spokes
  description = "All hybrid spoke objects"
}

output "ncc_hub" {
  value       = module.network_network-connectivity-center.ncc_hub
  description = "The NCC Hub object"
}

output "producer_vpc_network_spoke" {
  value       = module.network_network-connectivity-center.producer_vpc_network_spoke
  description = "All producer network vpc spoke objects"
}

output "router_appliance_spokes" {
  value       = module.network_network-connectivity-center.router_appliance_spokes
  description = "All router appliance spoke objects"
}

output "spokes" {
  value       = module.network_network-connectivity-center.spokes
  description = "All spoke objects prefixed with the type of spoke (vpc, hybrid, appliance)"
}

output "vpc_spokes" {
  value       = module.network_network-connectivity-center.vpc_spokes
  description = "All vpc spoke objects"
}
