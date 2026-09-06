output "ca_cert_pem" {
  value       = module.vault.ca_cert_pem
  description = "CA certificate used to verify Vault TLS client connections."
}

output "ca_key_pem" {
  value       = module.vault.ca_key_pem
  description = "Private key for the CA."
}

output "service_account_email" {
  value       = module.vault.service_account_email
  description = "Email for the vault-admin service account."
}

output "vault_addr" {
  value       = module.vault.vault_addr
  description = "Full protocol, address, and port (FQDN) pointing to the Vault load balancer.This is a drop-in to VAULT_ADDR: export VAULT_ADDR=\"$(terraform output vault_addr)\". And then continue to use Vault commands as usual."
}

output "vault_lb_addr" {
  value       = module.vault.vault_lb_addr
  description = "Address of the load balancer without port or protocol information. You probably want to use vault_addr."
}

output "vault_lb_port" {
  value       = module.vault.vault_lb_port
  description = "Port where Vault is exposed on the load balancer."
}

output "vault_nat_ips" {
  value       = module.vault.vault_nat_ips
  description = "The NAT-ips that the vault nodes will use to communicate with external services."
}

output "vault_network" {
  value       = module.vault.vault_network
  description = "The network in which the Vault cluster resides"
}

output "vault_storage_bucket" {
  value       = module.vault.vault_storage_bucket
  description = "GCS Bucket Vault is using as a backend/database"
}

output "vault_subnet" {
  value       = module.vault.vault_subnet
  description = "The subnetwork in which the Vault cluster resides"
}
