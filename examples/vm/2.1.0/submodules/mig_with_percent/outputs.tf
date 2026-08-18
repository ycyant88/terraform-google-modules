output "instance_group" {
  value       = module.vm_mig_with_percent.instance_group
  description = "Instance-group url of managed instance group"
}

output "self_link" {
  value       = module.vm_mig_with_percent.self_link
  description = "Self-link of managed instance group"
}
