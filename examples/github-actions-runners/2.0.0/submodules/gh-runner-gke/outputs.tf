output "ca_certificate" {
  value       = module.github-actions-runners.ca_certificate
  description = "The cluster ca certificate (base64 encoded)"
}

output "client_token" {
  value       = module.github-actions-runners.client_token
  description = "The bearer token for auth"
}

output "cluster_name" {
  value       = module.github-actions-runners.cluster_name
  description = "Cluster name"
}

output "kubernetes_endpoint" {
  value       = module.github-actions-runners.kubernetes_endpoint
  description = "The cluster endpoint"
}

output "location" {
  value       = module.github-actions-runners.location
  description = "Cluster location"
}

output "network_name" {
  value       = module.github-actions-runners.network_name
  description = "Name of VPC"
}

output "service_account" {
  value       = module.github-actions-runners.service_account
  description = "The default service account used for running nodes."
}

output "subnet_name" {
  value       = module.github-actions-runners.subnet_name
  description = "Name of VPC"
}
