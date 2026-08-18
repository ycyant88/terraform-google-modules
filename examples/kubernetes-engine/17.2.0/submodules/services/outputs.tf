output "project_id" {
  value       = module.kubernetes-engine_services.project_id
  description = "The GCP project you enabled APIs on"
}
