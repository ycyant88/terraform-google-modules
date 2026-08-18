output "backend_service_info" {
  value       = module.lb-http_backend.backend_service_info
  description = "Host, path and backend service mapping"
}
