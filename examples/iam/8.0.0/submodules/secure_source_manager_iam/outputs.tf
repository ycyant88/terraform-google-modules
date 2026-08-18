output "instances" {
  value       = module.iam_secure_source_manager_iam.instances
  description = "Secure source manager instance names which received for bindings."
}

output "members" {
  value       = module.iam_secure_source_manager_iam.members
  description = "Members which were bound to the SSM instances."
}

output "roles" {
  value       = module.iam_secure_source_manager_iam.roles
  description = "Roles which were assigned to members."
}
