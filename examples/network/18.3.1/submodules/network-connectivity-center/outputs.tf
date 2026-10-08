output "groups" {
  value       = module.network.groups
  description = "All group objects"
}

output "hybrid_spokes" {
  value       = module.network.hybrid_spokes
  description = "All hybrid spoke objects"
}

output "ncc_hub" {
  value       = module.network.ncc_hub
  description = "The NCC Hub object"
}

output "producer_vpc_network_spoke" {
  value       = module.network.producer_vpc_network_spoke
  description = "All producer network vpc spoke objects"
}

output "router_appliance_spokes" {
  value       = module.network.router_appliance_spokes
  description = "All router appliance spoke objects"
}

output "spokes" {
  value       = module.network.spokes
  description = "All spoke objects prefixed with the type of spoke (vpc, hybrid, appliance)"
}

output "vpc_spokes" {
  value       = module.network.vpc_spokes
  description = "All vpc spoke objects"
}
