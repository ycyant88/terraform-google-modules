output "fw_policy" {
  value       = module.network.fw_policy
  description = "Firewall policy created"
}

output "rules" {
  value       = module.network.rules
  description = "Firewall policy rules created"
}

output "target_associations" {
  value       = module.network.target_associations
  description = "folders/orgs associations created"
}
