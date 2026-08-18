output "fw_policy" {
  value       = module.network_hierarchical-firewall-policy.fw_policy
  description = "Firewall policy created"
}

output "rules" {
  value       = module.network_hierarchical-firewall-policy.rules
  description = "Firewall policy rules created"
}

output "target_associations" {
  value       = module.network_hierarchical-firewall-policy.target_associations
  description = "folders/orgs associations created"
}
