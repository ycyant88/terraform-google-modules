output "kms_key_rings" {
  value       = module.iam.kms_key_rings
  description = "KMS key rings which received bindings."
}

output "members" {
  value       = module.iam.members
  description = "Members which were bound to the KMS key rings."
}

output "roles" {
  value       = module.iam.roles
  description = "Roles which were assigned to members."
}
