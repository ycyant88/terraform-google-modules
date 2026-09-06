output "admin_ranges" {
  value       = module.network.admin_ranges
  description = "Admin ranges data."
}

output "custom_egress_allow_rules" {
  value       = module.network.custom_egress_allow_rules
  description = "Custom egress rules with allow blocks."
}

output "custom_egress_deny_rules" {
  value       = module.network.custom_egress_deny_rules
  description = "Custom egress rules with allow blocks."
}

output "custom_ingress_allow_rules" {
  value       = module.network.custom_ingress_allow_rules
  description = "Custom ingress rules with allow blocks."
}

output "custom_ingress_deny_rules" {
  value       = module.network.custom_ingress_deny_rules
  description = "Custom ingress rules with deny blocks."
}

output "internal_ranges" {
  value       = module.network.internal_ranges
  description = "Internal ranges."
}
