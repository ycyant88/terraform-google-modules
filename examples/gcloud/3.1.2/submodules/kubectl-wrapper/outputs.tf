output "bin_dir" {
  value       = module.gcloud_kubectl-wrapper.bin_dir
  description = "The full bin path of the modules executables"
}

output "create_cmd_bin" {
  value       = module.gcloud_kubectl-wrapper.create_cmd_bin
  description = "The full bin path & command used on create"
}

output "destroy_cmd_bin" {
  value       = module.gcloud_kubectl-wrapper.destroy_cmd_bin
  description = "The full bin path & command used on destroy"
}

output "wait" {
  value       = module.gcloud_kubectl-wrapper.wait
  description = "An output to use when you want to depend on cmd finishing"
}
