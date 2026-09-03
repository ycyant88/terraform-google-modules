output "cluster_membership_id" {
  value       = module.kubernetes-engine_fleet-membership.cluster_membership_id
  description = "The ID of the hub membership"
}

output "location" {
  value       = module.kubernetes-engine_fleet-membership.location
  description = "The location of the hub membership."
}

output "project_id" {
  value       = module.kubernetes-engine_fleet-membership.project_id
  description = "The project of the hub membership."
}

output "wait" {
  value       = module.kubernetes-engine_fleet-membership.wait
  description = "An output to use when you want to depend on registration finishing"
}
