output "apphub_service_uri" {
  value       = module.lb-http.apphub_service_uri
  description = "Service URI in CAIS style to be used by Apphub."
}

output "backend_service_info" {
  value       = module.lb-http.backend_service_info
  description = "Host, path and backend service mapping"
}
