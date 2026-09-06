output "keyring" {
  value       = module.kms.keyring
  description = "Self link of the keyring."
}

output "keyring_name" {
  value       = module.kms.keyring_name
  description = "Name of the keyring."
}

output "keyring_resource" {
  value       = module.kms.keyring_resource
  description = "Keyring resource."
}

output "keys" {
  value       = module.kms.keys
  description = "Map of key name => key self link."
}
