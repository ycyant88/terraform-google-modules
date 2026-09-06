output "available_zones" {
  value       = module.vm.available_zones
  description = "List of available zones in region"
}

output "instances_details" {
  value       = module.vm.instances_details
  description = "List of all details for compute instances"
}

output "instances_self_links" {
  value       = module.vm.instances_self_links
  description = "List of self-links for compute instances"
}

output "self_links" {
  value       = module.vm.self_links
  description = "List of self-links for unmanaged instance groups"
}

output "umig_details" {
  value       = module.vm.umig_details
  description = "List of all details for unmanaged instance groups"
}
