output "disk_name" {
  value       = module.datalab_gpu_instance.disk_name
  description = "The name of the persistent disk"
}

output "disk_size" {
  value       = module.datalab_gpu_instance.disk_size
  description = "The size of the persistent disk"
}

output "firewall_name" {
  value       = module.datalab_gpu_instance.firewall_name
  description = "The name of the firewall rule"
}

output "instance_name" {
  value       = module.datalab_gpu_instance.instance_name
  description = "The instance name"
}
