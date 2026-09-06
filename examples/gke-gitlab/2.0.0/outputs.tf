output "cluster_ca_certificate" {
  value       = module.gke-gitlab.cluster_ca_certificate
  description = "CA Certificate for the GKE cluster that GitLab is deployed in."
}

output "cluster_location" {
  value       = module.gke-gitlab.cluster_location
  description = "Location of the GKE cluster that GitLab is deployed in."
}

output "cluster_name" {
  value       = module.gke-gitlab.cluster_name
  description = "Name of the GKE cluster that GitLab is deployed in."
}

output "gitlab_address" {
  value       = module.gke-gitlab.gitlab_address
  description = "IP address where you can connect to your GitLab instance"
}

output "gitlab_url" {
  value       = module.gke-gitlab.gitlab_url
  description = "URL where you can access your GitLab instance"
}

output "host" {
  value       = module.gke-gitlab.host
  description = "Host for the GKE cluster that GitLab is deployed in."
}

output "root_password_instructions" {
  value       = module.gke-gitlab.root_password_instructions
  description = "Instructions for getting the root user's password for initial setup"
}

output "token" {
  value       = module.gke-gitlab.token
  description = "Token for the GKE cluster that GitLab is deployed in."
}
