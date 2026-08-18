output "git_creds_public" {
  value       = module.kubernetes-engine_k8s-operator-crd-support.git_creds_public
  description = "Public key of SSH keypair to allow the Anthos Operator to authenticate to your Git repository."
}

output "wait" {
  value       = module.kubernetes-engine_k8s-operator-crd-support.wait
  description = "An output to use when you want to depend on cmd finishing"
}
