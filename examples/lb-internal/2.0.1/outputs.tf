output "ip_address" {
  value       = module.lb-internal.ip_address
  description = "The internal IP assigned to the regional forwarding rule."
}
