output "backend_services" {
  value       = module.lb-http_dynamic_backends.backend_services
  description = "The backend service resources."
}

output "external_ip" {
  value       = module.lb-http_dynamic_backends.external_ip
  description = "The external IP assigned to the global fowarding rule."
}

output "http_proxy" {
  value       = module.lb-http_dynamic_backends.http_proxy
  description = "The HTTP proxy used by this module."
}

output "https_proxy" {
  value       = module.lb-http_dynamic_backends.https_proxy
  description = "The HTTPS proxyused by this module."
}
