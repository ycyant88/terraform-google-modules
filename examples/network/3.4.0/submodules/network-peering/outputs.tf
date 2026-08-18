output "complete" {
  value       = module.network_network-peering.complete
  description = "Output to be used as a module dependency."
}

output "local_network_peering" {
  value       = module.network_network-peering.local_network_peering
  description = "Network peering resource."
}

output "peer_network_peering" {
  value       = module.network_network-peering.peer_network_peering
  description = "Peer network peering resource."
}
