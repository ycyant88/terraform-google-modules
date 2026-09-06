output "ca_cert_pem" {
  value       = module.vault.ca_cert_pem
  description = "The root CA cert pem for generating client certs."
}

output "ca_private_key_algorithm" {
  value       = module.vault.ca_private_key_algorithm
  description = "The root CA algorithm for generating client certs."
}

output "ca_private_key_pem" {
  value       = module.vault.ca_private_key_pem
  description = "The root CA key pem for generating client certs."
}

output "instance_group" {
  value       = module.vault.instance_group
  description = "Link to the instance_group property of the instance group manager resource."
}
