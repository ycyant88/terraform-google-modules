output "route_ids" {
  value       = module.network.route_ids
  description = "The IDs of the created routes."
}

output "route_names" {
  value       = module.network.route_names
  description = "The names of the created routes."
}

output "routes" {
  value       = module.network.routes
  description = "The created routes resources"
}
