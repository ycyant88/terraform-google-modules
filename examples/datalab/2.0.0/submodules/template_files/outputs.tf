output "cloud_config" {
  value       = module.datalab_template_files.cloud_config
  description = "Rendered cloud config from template"
}

output "startup_script" {
  value       = module.datalab_template_files.startup_script
  description = "Rendered startup script"
}
