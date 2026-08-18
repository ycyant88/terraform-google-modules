output "ca_cert_pem" {
  value       = module.vault_cluster.ca_cert_pem
  description = "CA certificate used to verify Vault TLS client connections."
}

output "ca_key_pem" {
  value       = module.vault_cluster.ca_key_pem
  description = "Private key for the CA."
}

output "vault_addr" {
  value       = module.vault_cluster.vault_addr
  description = "Full protocol, address, and port (FQDN) pointing to the Vault load balancer.This is a drop-in to VAULT_ADDR: export VAULT_ADDR=\"$(terraform output vault_addr)\". And then continue to use Vault commands as usual."
}

output "vault_lb_addr" {
  value       = module.vault_cluster.vault_lb_addr
  description = "Address of the load balancer without port or protocol information. You probably want to use vault_addr."
}

output "vault_lb_port" {
  value       = module.vault_cluster.vault_lb_port
  description = "Port where Vault is exposed on the load balancer."
}
