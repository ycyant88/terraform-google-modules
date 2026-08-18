output "firewall_rules" {
  value       = module.network_firewall-rules.firewall_rules
  description = "The created firewall rule resources"
}

output "firewall_rules_ingress_egress" {
  value       = module.network_firewall-rules.firewall_rules_ingress_egress
  description = "The created firewall ingress/egress rule resources"
}
