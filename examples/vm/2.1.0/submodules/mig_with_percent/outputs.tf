output "instance_group" {
  value       = module.vm.instance_group
  description = "Instance-group url of managed instance group"
}

output "self_link" {
  value       = module.vm.self_link
  description = "Self-link of managed instance group"
}
