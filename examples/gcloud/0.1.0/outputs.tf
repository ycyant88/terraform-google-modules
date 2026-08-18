output "create_cmd_bin" {
  value       = module.gcloud.create_cmd_bin
  description = "The full bin path & command used on create"
}

output "destroy_cmd_bin" {
  value       = module.gcloud.destroy_cmd_bin
  description = "The full bin path & command used on destroy"
}
