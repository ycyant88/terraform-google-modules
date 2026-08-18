output "apphub_service_uri" {
  value       = module.lb-http_backend.apphub_service_uri
  description = "Service URI in CAIS style to be used by Apphub."
}

output "backend_service_info" {
  value       = module.lb-http_backend.backend_service_info
  description = "Host, path and backend service mapping"
}
