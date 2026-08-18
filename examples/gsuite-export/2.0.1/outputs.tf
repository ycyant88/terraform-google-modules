output "filter" {
  value       = module.gsuite-export.filter
  description = "Log export filter for logs exported by GSuite-exporter"
}

output "instance_name" {
  value       = module.gsuite-export.instance_name
  description = "GSuite Exporter instance name"
}

output "instance_project" {
  value       = module.gsuite-export.instance_project
  description = "GSuite Exporter instance project"
}

output "instance_zone" {
  value       = module.gsuite-export.instance_zone
  description = "GSuite Exporter instance zone"
}
