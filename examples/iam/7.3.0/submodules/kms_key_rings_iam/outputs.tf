output "kms_key_rings" {
  value       = module.iam_kms_key_rings_iam.kms_key_rings
  description = "KMS key rings which received bindings."
}

output "members" {
  value       = module.iam_kms_key_rings_iam.members
  description = "Members which were bound to the KMS key rings."
}

output "roles" {
  value       = module.iam_kms_key_rings_iam.roles
  description = "Roles which were assigned to members."
}
