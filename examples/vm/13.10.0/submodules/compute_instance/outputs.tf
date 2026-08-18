output "available_zones" {
  value       = module.vm_compute_instance.available_zones
  description = "List of available zones in region"
}

output "instances_details" {
  value       = module.vm_compute_instance.instances_details
  description = "List of all details for compute instances"
}

output "instances_self_links" {
  value       = module.vm_compute_instance.instances_self_links
  description = "List of self-links for compute instances"
}
