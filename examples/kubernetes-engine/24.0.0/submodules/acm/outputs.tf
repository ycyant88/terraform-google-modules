output "configmanagement_version" {
  value       = module.kubernetes-engine_acm.configmanagement_version
  description = "Version of ACM installed."
}

output "git_creds_public" {
  value       = module.kubernetes-engine_acm.git_creds_public
  description = "Public key of SSH keypair to allow the Anthos Config Management Operator to authenticate to your Git repository."
}

output "wait" {
  value       = module.kubernetes-engine_acm.wait
  description = "An output to use when you want to depend on cmd finishing"
}
