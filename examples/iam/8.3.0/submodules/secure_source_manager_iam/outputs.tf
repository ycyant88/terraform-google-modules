output "instances" {
  value       = module.iam.instances
  description = "Secure source manager instance names which received for bindings."
}

output "members" {
  value       = module.iam.members
  description = "Members which were bound to the SSM instances."
}

output "roles" {
  value       = module.iam.roles
  description = "Roles which were assigned to members."
}
