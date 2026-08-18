output "resources" {
  value       = module.vpc-service-controls_bridge_service_perimeter.resources
  description = "A list of GCP resources that are inside of the service perimeter. Currently only projects are allowed."
}
