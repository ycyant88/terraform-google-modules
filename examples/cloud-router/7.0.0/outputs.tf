output "nat" {
  value       = module.cloud-router.nat
  description = "Created NATs"
}

output "router" {
  value       = module.cloud-router.router
  description = "Created Router"
}
