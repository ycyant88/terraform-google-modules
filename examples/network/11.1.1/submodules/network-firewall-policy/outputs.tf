output "fw_policy" {
  value       = module.network_network-firewall-policy.fw_policy
  description = "Firewall policy created"
}

output "rules" {
  value       = module.network_network-firewall-policy.rules
  description = "Firewall policy rules created"
}

output "vpc_associations" {
  value       = module.network_network-firewall-policy.vpc_associations
  description = "VPC associations created"
}
