output "policy_id" {
  value       = module.vpc-service-controls.policy_id
  description = "Resource name of the AccessPolicy."
}

output "policy_name" {
  value       = module.vpc-service-controls.policy_name
  description = "The policy's name."
}
