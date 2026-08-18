output "email" {
  value       = module.service-accounts.email
  description = "Service account email (single-use case)."
}

output "emails" {
  value       = module.service-accounts.emails
  description = "Map of service account emails."
}

output "iam_email" {
  value       = module.service-accounts.iam_email
  description = "IAM-format service account email (single-use case)."
}

output "iam_emails" {
  value       = module.service-accounts.iam_emails
  description = "IAM-format service account emails."
}

output "keys" {
  value       = module.service-accounts.keys
  description = "Map of service account keys."
}
