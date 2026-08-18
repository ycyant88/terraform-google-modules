output "backend_services" {
  value       = module.lb_regional_proxy_lb.backend_services
  description = "The backend service resources."
}

output "forwarding_rule" {
  value       = module.lb_regional_proxy_lb.forwarding_rule
  description = "The forwarding rule of the load balancer."
}

output "tcp_proxy" {
  value       = module.lb_regional_proxy_lb.tcp_proxy
  description = "The TCP proxy used by this module."
}
