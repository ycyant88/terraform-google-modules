output "members" {
  value       = module.iam.members
  description = "Members which were bound to the Subnetwork."
}

output "roles" {
  value       = module.iam.roles
  description = "Roles which were assigned to members."
}

output "subnets" {
  value       = module.iam.subnets
  description = "Subnetworks which received bindings."
}
