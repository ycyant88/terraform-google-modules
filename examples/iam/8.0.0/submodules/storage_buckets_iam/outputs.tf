output "members" {
  value       = module.iam.members
  description = "Members which were bound to the Storage Bucket."
}

output "roles" {
  value       = module.iam.roles
  description = "Roles which were assigned to members."
}

output "storage_buckets" {
  value       = module.iam.storage_buckets
  description = "Storage Buckets which received bindings."
}
