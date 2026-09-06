output "attestor" {
  value       = module.kubernetes-engine.attestor
  description = "Name of the built attestor"
}

output "key" {
  value       = module.kubernetes-engine.key
  description = "Name of the Key created for the attestor"
}
