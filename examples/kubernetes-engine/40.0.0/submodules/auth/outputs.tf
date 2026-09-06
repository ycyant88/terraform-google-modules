output "cluster_ca_certificate" {
  value       = module.kubernetes-engine.cluster_ca_certificate
  description = "The cluster_ca_certificate value for use with the kubernetes provider."
}

output "host" {
  value       = module.kubernetes-engine.host
  description = "The host value for use with the kubernetes provider."
}

output "kubeconfig_raw" {
  value       = module.kubernetes-engine.kubeconfig_raw
  description = "A kubeconfig file configured to access the GKE cluster."
}

output "token" {
  value       = module.kubernetes-engine.token
  description = "The token value for use with the kubernetes provider."
}
