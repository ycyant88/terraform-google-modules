output "firewall_rules" {
  value       = module.network_firewall-rules.firewall_rules
  description = "The created firewall rule resources"
}
