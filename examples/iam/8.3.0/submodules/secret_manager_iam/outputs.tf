output "members" {
  value       = module.iam.members
  description = "Members which were bound to the Secret Manager Secrets."
}

output "roles" {
  value       = module.iam.roles
  description = "Roles which were assigned to members."
}

output "secrets" {
  value       = module.iam.secrets
  description = "Secret Manager Secrets which received for bindings."
}
