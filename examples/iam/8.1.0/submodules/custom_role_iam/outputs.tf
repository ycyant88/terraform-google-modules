output "custom_role_id" {
  value       = module.iam.custom_role_id
  description = "ID of the custom role created."
}

output "custom_role_name" {
  value       = module.iam.custom_role_name
  description = "Name of the custom role created in the format {{target_level}}/{{target_id}}/roles/{{role_id}}, for use as a reference in other resources such as IAM role bindings."
}
