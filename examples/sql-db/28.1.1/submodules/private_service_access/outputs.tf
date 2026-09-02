output "address" {
  value       = module.sql-db_private_service_access.address
  description = "First IP of the reserved range."
}

output "google_compute_global_address_name" {
  value       = module.sql-db_private_service_access.google_compute_global_address_name
  description = "URL of the reserved range."
}

output "peering_completed" {
  value       = module.sql-db_private_service_access.peering_completed
  description = "Use for enforce ordering between resource creation"
}
