output "available_zones" {
  value       = module.vm.available_zones
  description = "List of available zones in region"
}

output "instances_self_links" {
  value       = module.vm.instances_self_links
  description = "List of self-links for compute instances"
}
