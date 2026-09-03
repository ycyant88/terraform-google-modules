output "attestor" {
  value       = module.kubernetes-engine_binary-authorization.attestor
  description = "Name of the built attestor"
}

output "key" {
  value       = module.kubernetes-engine_binary-authorization.key
  description = "Name of the Key created for the attestor"
}
