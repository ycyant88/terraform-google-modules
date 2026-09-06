output "backend_services" {
  value       = module.lb-http.backend_services
  description = "The backend service resources."
}

output "external_ip" {
  value       = module.lb-http.external_ip
  description = "The external IP assigned to the global fowarding rule."
}
