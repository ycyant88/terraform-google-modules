output "cloud_config" {
  value       = module.datalab.cloud_config
  description = "Rendered cloud config from template"
}

output "startup_script" {
  value       = module.datalab.startup_script
  description = "Rendered startup script"
}
