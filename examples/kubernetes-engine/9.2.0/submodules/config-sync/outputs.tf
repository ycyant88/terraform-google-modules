output "git_creds_public" {
  value       = module.kubernetes-engine_config-sync.git_creds_public
  description = "Public key of SSH keypair to allow the Config Sync Operator to authenticate to your Git repository."
}
