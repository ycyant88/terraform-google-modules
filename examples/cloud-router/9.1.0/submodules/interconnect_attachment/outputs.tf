output "attachment" {
  value       = module.cloud-router.attachment
  description = "The created attachment"
}

output "customer_router_ip_address" {
  value       = module.cloud-router.customer_router_ip_address
  description = "IPv4 address + prefix length to be configured on the customer router subinterface for this interconnect attachment."
}
