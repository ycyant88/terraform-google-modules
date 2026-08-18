output "external_ip" {
  value       = module.lb.external_ip
  description = "The external ip address of the forwarding rule."
}

output "target_pool" {
  value       = module.lb.target_pool
  description = "The self_link to the target pool resource created."
}
