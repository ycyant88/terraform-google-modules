output "ca_cert_pem" {
  value       = module.vault.ca_cert_pem
  description = "CA certificate used to verify Vault TLS client connections.\n"
}

output "ca_key_pem" {
  value       = module.vault.ca_key_pem
  description = "Private key for the CA.\n"
}

output "service_account_email" {
  value       = module.vault.service_account_email
  description = "Email for the vault-admin service account.\n"
}

output "vault_addr" {
  value       = module.vault.vault_addr
  description = "Full protocol, address, and port (FQDN) pointing to the Vault load balancer.\nThis is a drop-in to VAULT_ADDR:\n\n    export VAULT_ADDR=\"$(terraform output vault_addr)\"\n\nAnd then continue to use Vault commands as usual.\n"
}

output "vault_lb_addr" {
  value       = module.vault.vault_lb_addr
  description = "Address of the load balancer without port or protocol information. You probably\nwant to use vault_addr.\n"
}

output "vault_lb_port" {
  value       = module.vault.vault_lb_port
  description = "Port where Vault is exposed on the load balancer.\n"
}

output "vault_storage_bucket" {
  value       = module.vault.vault_storage_bucket
  description = "GCS Bucket Vault is using as a backend/database\n"
}
