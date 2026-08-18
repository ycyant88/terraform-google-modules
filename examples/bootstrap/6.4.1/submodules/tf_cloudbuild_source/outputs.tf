output "cloudbuild_project_id" {
  value       = module.bootstrap_tf_cloudbuild_source.cloudbuild_project_id
  description = "Project for CloudBuild and Cloud Source Repositories."
}

output "csr_repos" {
  value       = module.bootstrap_tf_cloudbuild_source.csr_repos
  description = "List of Cloud Source Repos created by the module."
}

output "gcs_cloudbuild_default_bucket" {
  value       = module.bootstrap_tf_cloudbuild_source.gcs_cloudbuild_default_bucket
  description = "Bucket used to store temporary files in CloudBuild project."
}
