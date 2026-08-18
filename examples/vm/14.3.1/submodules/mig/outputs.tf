output "apphub_workload_uri" {
  value       = module.vm_mig.apphub_workload_uri
  description = "Workload URI in CAIS style to be used by Apphub."
}

output "health_check_self_links" {
  value       = module.vm_mig.health_check_self_links
  description = "All self_links of healthchecks created for the instance group."
}

output "instance_group" {
  value       = module.vm_mig.instance_group
  description = "Instance-group url of managed instance group"
}

output "instance_group_manager" {
  value       = module.vm_mig.instance_group_manager
  description = "An instance of google_compute_region_instance_group_manager of the instance group."
}

output "self_link" {
  value       = module.vm_mig.self_link
  description = "Self-link of managed instance group"
}
