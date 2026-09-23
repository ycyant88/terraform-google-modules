output "cloud_run_services" {
  value       = module.iam.cloud_run_services
  description = "Cloud Run services which received for bindings."
}

output "members" {
  value       = module.iam.members
  description = "Members which were bound to the Cloud Run services."
}

output "roles" {
  value       = module.iam.roles
  description = "Roles which were assigned to members."
}
