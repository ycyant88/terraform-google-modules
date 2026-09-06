output "gitlab_address" {
  value       = module.gke-gitlab.gitlab_address
  description = "IP address where you can connect to your GitLab instance"
}

output "gitlab_url" {
  value       = module.gke-gitlab.gitlab_url
  description = "URL where you can access your GitLab instance"
}

output "root_password_instructions" {
  value       = module.gke-gitlab.root_password_instructions
  description = "Instructions for getting the root user's password for initial setup"
}
