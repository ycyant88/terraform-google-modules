output "apphub_service_uri" {
  value       = module.lb-http_backend.apphub_service_uri
  description = "Service URI in CAIS style to be used by Apphub."
}

output "backend_service_info" {
  value       = module.lb-http_backend.backend_service_info
  description = "Host, path and backend service mapping"
}

output "psc_negs" {
  value       = module.lb-http_backend.psc_negs
  description = "Private Service Connect backends that were created for this backend service"
}
