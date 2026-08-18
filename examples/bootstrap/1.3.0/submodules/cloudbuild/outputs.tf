output "cloudbuild_project_id" {
  value       = module.bootstrap_cloudbuild.cloudbuild_project_id
  description = "Project where CloudBuild configuration and terraform container image will reside."
}

output "csr_repos" {
  value       = module.bootstrap_cloudbuild.csr_repos
  description = "List of Cloud Source Repos created by the module, linked to Cloud Build triggers."
}

output "gcs_bucket_cloudbuild_artifacts" {
  value       = module.bootstrap_cloudbuild.gcs_bucket_cloudbuild_artifacts
  description = "Bucket used to store Cloud/Build artefacts in CloudBuild project."
}

output "kms_crypto_key" {
  value       = module.bootstrap_cloudbuild.kms_crypto_key
  description = "KMS key created by the module."
}

output "kms_keyring" {
  value       = module.bootstrap_cloudbuild.kms_keyring
  description = "KMS Keyring created by the module."
}
