output "account_details" {
  value       = module.service-accounts.account_details
  description = "Service account id and email"
}

output "email" {
  value       = module.service-accounts.email
  description = "Service account email"
}

output "env_vars" {
  value       = module.service-accounts.env_vars
  description = "Exported environment variables"
}

output "iam_email" {
  value       = module.service-accounts.iam_email
  description = "IAM format service account email"
}

output "id" {
  value       = module.service-accounts.id
  description = "Service account id in the format 'projects/{{project}}/serviceAccounts/{{email}}'"
}
