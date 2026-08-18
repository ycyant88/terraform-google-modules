output "instance_group" {
  value       = module.vm_mig.instance_group
  description = "Instance-group url of managed instance group"
}

output "self_link" {
  value       = module.vm_mig.self_link
  description = "Self-link of managed instance group"
}
