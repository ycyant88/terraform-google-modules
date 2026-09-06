output "backend_service_info" {
  value       = module.lb-http.backend_service_info
  description = "Host, path and backend service mapping"
}
