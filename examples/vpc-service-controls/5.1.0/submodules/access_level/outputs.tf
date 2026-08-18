output "name" {
  value       = module.vpc-service-controls_access_level.name
  description = "Description of the AccessLevel and its use. Does not affect behavior."
}

output "name_id" {
  value       = module.vpc-service-controls_access_level.name_id
  description = "The fully-qualified name of the Access Level. Format: accessPolicies/{policy_id}/accessLevels/{name}"
}
