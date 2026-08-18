output "project_id" {
  value       = module.iam_member_iam.project_id
  description = "Project id."
}

output "roles" {
  value       = module.iam_member_iam.roles
  description = "Project roles."
}
