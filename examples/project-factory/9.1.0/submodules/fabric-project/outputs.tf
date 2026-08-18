output "cloudsvc_service_account" {
  value       = module.project-factory_fabric-project.cloudsvc_service_account
  description = "Cloud services service account (depends on services)."
}

output "custom_roles" {
  value       = module.project-factory_fabric-project.custom_roles
  description = "Ids of the created custom roles."
}

output "gce_service_account" {
  value       = module.project-factory_fabric-project.gce_service_account
  description = "Default GCE service account (depends on services)."
}

output "gke_service_account" {
  value       = module.project-factory_fabric-project.gke_service_account
  description = "Default GKE service account (depends on services)."
}

output "name" {
  value       = module.project-factory_fabric-project.name
  description = "Name (depends on services)."
}

output "number" {
  value       = module.project-factory_fabric-project.number
  description = "Project number (depends on services)."
}

output "project_id" {
  value       = module.project-factory_fabric-project.project_id
  description = "Project id (depends on services)."
}
