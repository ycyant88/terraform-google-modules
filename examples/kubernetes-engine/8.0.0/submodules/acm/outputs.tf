output "git_creds_public" {
  value       = module.kubernetes-engine_acm.git_creds_public
  description = "Public key of SSH keypair to allow the Anthos Operator to authenticate to your Git repository."
}
