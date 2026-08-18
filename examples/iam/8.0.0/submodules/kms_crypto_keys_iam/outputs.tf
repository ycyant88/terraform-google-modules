output "kms_crypto_keys" {
  value       = module.iam_kms_crypto_keys_iam.kms_crypto_keys
  description = "KMS crypto keys which received bindings."
}

output "members" {
  value       = module.iam_kms_crypto_keys_iam.members
  description = "Members which were bound to the KMS crypto keys."
}

output "roles" {
  value       = module.iam_kms_crypto_keys_iam.roles
  description = "Roles which were assigned to members."
}
