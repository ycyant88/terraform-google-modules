output "access_level" {
  value       = module.vpc-service-controls.access_level
  description = "access_level created"
}

output "name" {
  value       = module.vpc-service-controls.name
  description = "Description of the AccessLevel and its use. Does not affect behavior."
}

output "name_id" {
  value       = module.vpc-service-controls.name_id
  description = "The fully-qualified name of the Access Level. Format: accessPolicies/{policy_id}/accessLevels/{name}"
}
