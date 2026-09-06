output "cloudbuild_project_id" {
  value       = module.bootstrap.cloudbuild_project_id
  description = "Project for CloudBuild and Cloud Source Repositories."
}

output "csr_repos" {
  value       = module.bootstrap.csr_repos
  description = "List of Cloud Source Repos created by the module."
}

output "gcs_cloudbuild_default_bucket" {
  value       = module.bootstrap.gcs_cloudbuild_default_bucket
  description = "Bucket used to store temporary files in CloudBuild project."
}
