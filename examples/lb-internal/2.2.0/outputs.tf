output "forwarding_rule" {
  value       = module.lb-internal.forwarding_rule
  description = "The forwarding rule self_link."
}

output "ip_address" {
  value       = module.lb-internal.ip_address
  description = "The internal IP assigned to the regional forwarding rule."
}
