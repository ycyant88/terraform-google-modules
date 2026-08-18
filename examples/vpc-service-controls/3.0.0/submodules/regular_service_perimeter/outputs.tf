output "shared_resources" {
  value       = module.vpc-service-controls_regular_service_perimeter.shared_resources
  description = "A map of lists of resources to share in a Bridge perimeter module. Each list should contain all or a subset of the perimeters resources"
}
