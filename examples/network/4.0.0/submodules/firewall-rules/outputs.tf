output "firewall_rules" {
  value       = module.network.firewall_rules
  description = "The created firewall rule resources"
}
