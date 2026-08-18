output "backend_services" {
  value       = module.lb-http_serverless_negs.backend_services
  description = "The backend service resources."
}

output "external_ip" {
  value       = module.lb-http_serverless_negs.external_ip
  description = "The external IPv4 assigned to the global fowarding rule."
}

output "external_ipv6_address" {
  value       = module.lb-http_serverless_negs.external_ipv6_address
  description = "The external IPv6 assigned to the global fowarding rule."
}

output "http_proxy" {
  value       = module.lb-http_serverless_negs.http_proxy
  description = "The HTTP proxy used by this module."
}

output "https_proxy" {
  value       = module.lb-http_serverless_negs.https_proxy
  description = "The HTTPS proxy used by this module."
}

output "ipv6_enabled" {
  value       = module.lb-http_serverless_negs.ipv6_enabled
  description = "Whether IPv6 configuration is enabled on this load-balancer"
}

output "ssl_certificate_created" {
  value       = module.lb-http_serverless_negs.ssl_certificate_created
  description = "The SSL certificate create from key/pem"
}

output "url_map" {
  value       = module.lb-http_serverless_negs.url_map
  description = "The default URL map used by this module."
}
