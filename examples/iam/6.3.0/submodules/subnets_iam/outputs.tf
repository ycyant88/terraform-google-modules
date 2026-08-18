output "members" {
  value       = module.iam_subnets_iam.members
  description = "Members which were bound to the Subnetwork."
}

output "roles" {
  value       = module.iam_subnets_iam.roles
  description = "Roles which were assigned to members."
}

output "subnets" {
  value       = module.iam_subnets_iam.subnets
  description = "Subnetworks which received bindings."
}
