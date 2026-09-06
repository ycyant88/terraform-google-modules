output "ers_instance" {
  value       = module.sap.ers_instance
  description = "ERS instance"
}

output "nw_forwarding_rules" {
  value       = module.sap.nw_forwarding_rules
  description = "Forwarding rules"
}

output "nw_hc" {
  value       = module.sap.nw_hc
  description = "Health Checks"
}

output "nw_hc_firewall" {
  value       = module.sap.nw_hc_firewall
  description = "Firewall rule for the Health Checks"
}

output "nw_instance_groups" {
  value       = module.sap.nw_instance_groups
  description = "NW Instance Groups"
}

output "nw_regional_backend_services" {
  value       = module.sap.nw_regional_backend_services
  description = "Backend Services"
}

output "nw_vips" {
  value       = module.sap.nw_vips
  description = "NW virtual IPs"
}

output "scs_instance" {
  value       = module.sap.scs_instance
  description = "SCS instance"
}
