output "constraint" {
  value       = module.org-policy.constraint
  description = "Policy Constraint Identifier without constraints/ prefix"
}

output "policy_root" {
  value       = module.org-policy.policy_root
  description = "Policy Root in the hierarchy for the given policy"
}

output "policy_root_id" {
  value       = module.org-policy.policy_root_id
  description = "Project Root ID at which the policy is applied"
}
