output "resources" {
  value       = module.vpc-service-controls.resources
  description = "A list of GCP resources that are inside of the service perimeter. Currently only projects are allowed."
}
