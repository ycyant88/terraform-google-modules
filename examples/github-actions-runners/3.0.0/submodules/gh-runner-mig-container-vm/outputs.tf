output "mig_instance_group" {
  value       = module.github-actions-runners_gh-runner-mig-container-vm.mig_instance_group
  description = "The instance group url of the created MIG"
}

output "mig_instance_template" {
  value       = module.github-actions-runners_gh-runner-mig-container-vm.mig_instance_template
  description = "The name of the MIG Instance Template"
}

output "mig_name" {
  value       = module.github-actions-runners_gh-runner-mig-container-vm.mig_name
  description = "The name of the MIG"
}

output "network_name" {
  value       = module.github-actions-runners_gh-runner-mig-container-vm.network_name
  description = "Name of VPC"
}

output "service_account" {
  value       = module.github-actions-runners_gh-runner-mig-container-vm.service_account
  description = "Service account email for GCE"
}

output "subnet_name" {
  value       = module.github-actions-runners_gh-runner-mig-container-vm.subnet_name
  description = "Name of VPC"
}
