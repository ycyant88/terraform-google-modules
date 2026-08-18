output "bin_dir" {
  value       = module.gcloud_kubectl-fleet-wrapper.bin_dir
  description = "The full bin path of the modules executables"
}

output "create_cmd_bin" {
  value       = module.gcloud_kubectl-fleet-wrapper.create_cmd_bin
  description = "The full bin path & command used on create"
}

output "destroy_cmd_bin" {
  value       = module.gcloud_kubectl-fleet-wrapper.destroy_cmd_bin
  description = "The full bin path & command used on destroy"
}

output "wait" {
  value       = module.gcloud_kubectl-fleet-wrapper.wait
  description = "An output to use when you want to depend on cmd finishing"
}
