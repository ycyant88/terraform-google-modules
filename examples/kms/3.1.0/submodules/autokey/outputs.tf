output "autokey_config_id" {
  value       = module.kms_autokey.autokey_config_id
  description = "An Autokey configuration identifier."
}

output "autokey_keyhandles" {
  value       = module.kms_autokey.autokey_keyhandles
  description = "A map of KeyHandles created."
}
