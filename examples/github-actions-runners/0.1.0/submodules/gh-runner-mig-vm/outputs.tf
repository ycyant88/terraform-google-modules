output "gh_secret_id" {
  value       = module.github-actions-runners.gh_secret_id
  description = "Secret Manager ID and version of the github secrets (token, repo_name,repo_owner)"
}

output "mig-instance-group" {
  value       = module.github-actions-runners.mig-instance-group
  description = "The instance group url of the created MIG"
}

output "mig-instance-template" {
  value       = module.github-actions-runners.mig-instance-template
  description = "The name of the MIG Instance Template"
}

output "mig-name" {
  value       = module.github-actions-runners.mig-name
  description = "The name of the MIG"
}

output "network_name" {
  value       = module.github-actions-runners.network_name
  description = "Name of VPC"
}

output "service_account" {
  value       = module.github-actions-runners.service_account
  description = "Service account email for GCE"
}

output "subnet_name" {
  value       = module.github-actions-runners.subnet_name
  description = "Name of VPC"
}
