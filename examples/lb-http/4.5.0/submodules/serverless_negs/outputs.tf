output "backend_services" {
  value       = module.lb-http_serverless_negs.backend_services
  description = "The backend service resources."
}

output "external_ip" {
  value       = module.lb-http_serverless_negs.external_ip
  description = "The external IP assigned to the global forwarding rule."
}

output "http_proxy" {
  value       = module.lb-http_serverless_negs.http_proxy
  description = "The HTTP proxy used by this module."
}

output "https_proxy" {
  value       = module.lb-http_serverless_negs.https_proxy
  description = "The HTTPS proxy used by this module."
}
