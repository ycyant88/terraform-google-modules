output "bin_dir" {
  value       = module.gcloud.bin_dir
  description = "The full bin path of the modules executables"
}

output "create_cmd_bin" {
  value       = module.gcloud.create_cmd_bin
  description = "The full bin path & command used on create"
}

output "destroy_cmd_bin" {
  value       = module.gcloud.destroy_cmd_bin
  description = "The full bin path & command used on destroy"
}

output "downloaded" {
  value       = module.gcloud.downloaded
  description = "Whether gcloud was downloaded or not"
}

output "wait" {
  value       = module.gcloud.wait
  description = "An output to use when you want to depend on cmd finishing"
}
