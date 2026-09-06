output "kms_crypto_keys" {
  value       = module.iam.kms_crypto_keys
  description = "KMS crypto keys which received bindings."
}

output "members" {
  value       = module.iam.members
  description = "Members which were bound to the KMS crypto keys."
}

output "roles" {
  value       = module.iam.roles
  description = "Roles which were assigned to members."
}
