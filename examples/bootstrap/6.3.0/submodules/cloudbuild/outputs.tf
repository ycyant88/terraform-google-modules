output "cloudbuild_project_id" {
  value       = module.bootstrap.cloudbuild_project_id
  description = "Project where CloudBuild configuration and terraform container image will reside."
}

output "csr_repos" {
  value       = module.bootstrap.csr_repos
  description = "List of Cloud Source Repos created by the module, linked to Cloud Build triggers."
}

output "gcs_bucket_cloudbuild_artifacts" {
  value       = module.bootstrap.gcs_bucket_cloudbuild_artifacts
  description = "Bucket used to store Cloud/Build artifacts in CloudBuild project."
}

output "gcs_bucket_cloudbuild_logs" {
  value       = module.bootstrap.gcs_bucket_cloudbuild_logs
  description = "Bucket used to store Cloud/Build logs in CloudBuild project."
}

output "tf_runner_artifact_repo" {
  value       = module.bootstrap.tf_runner_artifact_repo
  description = "GAR Repo created to store runner images"
}
