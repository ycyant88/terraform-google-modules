output "available_zones" {
  value       = module.vm_umig.available_zones
  description = "List of available zones in region"
}

output "instances_details" {
  value       = module.vm_umig.instances_details
  description = "List of all details for compute instances"
}

output "instances_self_links" {
  value       = module.vm_umig.instances_self_links
  description = "List of self-links for compute instances"
}

output "self_links" {
  value       = module.vm_umig.self_links
  description = "List of self-links for unmanaged instance groups"
}

output "umig_details" {
  value       = module.vm_umig.umig_details
  description = "List of all details for unmanaged instance groups"
}
