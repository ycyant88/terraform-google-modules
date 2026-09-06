output "cluster_membership_id" {
  value       = module.kubernetes-engine.cluster_membership_id
  description = "The ID of the hub membership"
}

output "wait" {
  value       = module.kubernetes-engine.wait
  description = "An output to use when you want to depend on registration finishing"
}
