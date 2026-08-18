output "admin_ranges" {
  value       = module.network_fabric-net-firewall.admin_ranges
  description = "Admin ranges data."
}

output "internal_ranges" {
  value       = module.network_fabric-net-firewall.internal_ranges
  description = "Internal ranges."
}
