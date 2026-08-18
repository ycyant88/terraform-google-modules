output "git_creds_public" {
  value       = module.kubernetes-engine_acm.git_creds_public
  description = "Public key of SSH keypair to allow the Anthos Config Management Operator to authenticate to your Git repository."
}
