output "disk_name" {
  value       = module.datalab.disk_name
  description = "The name of the persistent disk"
}

output "disk_size" {
  value       = module.datalab.disk_size
  description = "The size of the persistent disk"
}

output "firewall_name" {
  value       = module.datalab.firewall_name
  description = "The name of the firewall rule"
}

output "instance_name" {
  value       = module.datalab.instance_name
  description = "The instance name"
}

output "labels" {
  value       = module.datalab.labels
  description = "A map of key/value label pairs to assigned to the instance."
}
