output "perimeter_name" {
  value       = module.vpc-service-controls.perimeter_name
  description = "The perimeter's name."
}

output "resources" {
  value       = module.vpc-service-controls.resources
  description = "A list of GCP resources that are inside of the service perimeter. Currently only projects are allowed."
}

output "shared_resources" {
  value       = module.vpc-service-controls.shared_resources
  description = "A map of lists of resources to share in a Bridge perimeter module. Each list should contain all or a subset of the perimeters resources"
}
