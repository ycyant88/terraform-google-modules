output "gcp_service_account_email" {
  value       = module.kubernetes-engine_workload-identity.gcp_service_account_email
  description = "Email address of GCP service account."
}

output "gcp_service_account_fqn" {
  value       = module.kubernetes-engine_workload-identity.gcp_service_account_fqn
  description = "FQN of GCP service account."
}

output "gcp_service_account_name" {
  value       = module.kubernetes-engine_workload-identity.gcp_service_account_name
  description = "Name of GCP service account."
}

output "k8s_service_account_name" {
  value       = module.kubernetes-engine_workload-identity.k8s_service_account_name
  description = "Name of k8s service account."
}

output "k8s_service_account_namespace" {
  value       = module.kubernetes-engine_workload-identity.k8s_service_account_namespace
  description = "Namespace of k8s service account."
}
