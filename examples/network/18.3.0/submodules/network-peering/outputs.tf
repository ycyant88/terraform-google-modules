output "complete" {
  value       = module.network.complete
  description = "Output to be used as a module dependency."
}

output "local_network_peering" {
  value       = module.network.local_network_peering
  description = "Network peering resource."
}

output "peer_network_peering" {
  value       = module.network.peer_network_peering
  description = "Peer network peering resource."
}
