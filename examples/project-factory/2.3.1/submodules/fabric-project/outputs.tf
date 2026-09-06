output "custom_roles" {
  value       = module.project-factory.custom_roles
  description = "Ids of the created custom roles."
}

output "gce_service_account" {
  value       = module.project-factory.gce_service_account
  description = "Default GCE service account (depends on services)."
}

output "gke_service_account" {
  value       = module.project-factory.gke_service_account
  description = "Default GKE service account (depends on services)."
}

output "number" {
  value       = module.project-factory.number
  description = "Project number (depends on services)."
}

output "project_id" {
  value       = module.project-factory.project_id
  description = "Project id (depends on services)."
}
