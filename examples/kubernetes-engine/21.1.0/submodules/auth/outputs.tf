output "cluster_ca_certificate" {
  value       = module.kubernetes-engine_auth.cluster_ca_certificate
  description = "The cluster_ca_certificate value for use with the kubernetes provider."
}

output "host" {
  value       = module.kubernetes-engine_auth.host
  description = "The host value for use with the kubernetes provider."
}

output "kubeconfig_raw" {
  value       = module.kubernetes-engine_auth.kubeconfig_raw
  description = "A kubeconfig file configured to access the GKE cluster."
}

output "token" {
  value       = module.kubernetes-engine_auth.token
  description = "The token value for use with the kubernetes provider."
}
