output "fw_policy" {
  value       = module.network.fw_policy
  description = "Firewall policy created"
}

output "rules" {
  value       = module.network.rules
  description = "Firewall policy rules created"
}

output "vpc_associations" {
  value       = module.network.vpc_associations
  description = "VPC associations created"
}
