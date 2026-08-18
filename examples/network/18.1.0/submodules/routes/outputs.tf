output "route_ids" {
  value       = module.network_routes.route_ids
  description = "The IDs of the created routes."
}

output "route_names" {
  value       = module.network_routes.route_names
  description = "The names of the created routes."
}

output "routes" {
  value       = module.network_routes.routes
  description = "The created routes resources"
}
