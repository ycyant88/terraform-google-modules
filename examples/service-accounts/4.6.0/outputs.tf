output "disabled" {
  value       = module.service-accounts.disabled
  description = "The disabled status of the service accounts."
}

output "email" {
  value       = module.service-accounts.email
  description = "Service account email (for single use)."
}

output "emails" {
  value       = module.service-accounts.emails
  description = "Service account emails by name."
}

output "emails_list" {
  value       = module.service-accounts.emails_list
  description = "Service account emails as list."
}

output "iam_email" {
  value       = module.service-accounts.iam_email
  description = "IAM-format service account email (for single use)."
}

output "iam_emails" {
  value       = module.service-accounts.iam_emails
  description = "IAM-format service account emails by name."
}

output "iam_emails_list" {
  value       = module.service-accounts.iam_emails_list
  description = "IAM-format service account emails as list."
}

output "key" {
  value       = module.service-accounts.key
  description = "Service account key (for single use)."
}

output "keys" {
  value       = module.service-accounts.keys
  description = "Map of service account keys."
}

output "service_account" {
  value       = module.service-accounts.service_account
  description = "Service account resource (for single use)."
}

output "service_accounts" {
  value       = module.service-accounts.service_accounts
  description = "Service account resources as list."
}

output "service_accounts_map" {
  value       = module.service-accounts.service_accounts_map
  description = "Service account resources by name."
}
