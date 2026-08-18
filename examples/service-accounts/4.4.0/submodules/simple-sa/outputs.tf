output "email" {
  value       = module.service-accounts_simple-sa.email
  description = "Service account email"
}

output "env_vars" {
  value       = module.service-accounts_simple-sa.env_vars
  description = "Exported environment variables"
}

output "iam_email" {
  value       = module.service-accounts_simple-sa.iam_email
  description = "IAM format service account email"
}

output "id" {
  value       = module.service-accounts_simple-sa.id
  description = "Service account id in the format 'projects/{{project}}/serviceAccounts/{{email}}'"
}
