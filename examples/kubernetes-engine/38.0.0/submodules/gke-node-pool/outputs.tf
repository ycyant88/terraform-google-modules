output "id" {
  value       = module.kubernetes-engine_gke-node-pool.id
  description = "an identifier for the resource with format {{project}}/{{location}}/{{cluster}}/{{name}}"
}

output "instance_group_urls" {
  value       = module.kubernetes-engine_gke-node-pool.instance_group_urls
  description = "The resource URLs of the managed instance groups associated with this node pool."
}

output "managed_instance_group_urls" {
  value       = module.kubernetes-engine_gke-node-pool.managed_instance_group_urls
  description = "List of instance group URLs which have been assigned to this node pool."
}
