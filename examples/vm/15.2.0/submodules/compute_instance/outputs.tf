output "available_zones" {
  value       = module.vm_compute_instance.available_zones
  description = "List of available zones in region"
}

output "instance_name" {
  value       = module.vm_compute_instance.instance_name
  description = "The name of the first compute instance."
}

output "instances_details" {
  value       = module.vm_compute_instance.instances_details
  description = "List of all details for compute instances"
}

output "instances_self_links" {
  value       = module.vm_compute_instance.instances_self_links
  description = "List of self-links for compute instances"
}

output "service_account_email" {
  value       = module.vm_compute_instance.service_account_email
  description = "The service account email associated with the instances."
}
