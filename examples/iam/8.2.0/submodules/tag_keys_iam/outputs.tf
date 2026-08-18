output "members" {
  value       = module.iam_tag_keys_iam.members
  description = "Members which were bound to the Tag keys."
}

output "roles" {
  value       = module.iam_tag_keys_iam.roles
  description = "Roles which were assigned to members."
}

output "tag_keys" {
  value       = module.iam_tag_keys_iam.tag_keys
  description = "Tag keys which received for bindings."
}
