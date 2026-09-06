output "admin_ranges" {
  value       = module.network.admin_ranges
  description = "Admin ranges data."
}

output "internal_ranges" {
  value       = module.network.internal_ranges
  description = "Internal ranges."
}
