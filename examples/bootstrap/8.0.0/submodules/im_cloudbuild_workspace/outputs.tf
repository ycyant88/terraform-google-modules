output "cloudbuild_apply_trigger_id" {
  value       = module.bootstrap_im_cloudbuild_workspace.cloudbuild_apply_trigger_id
  description = "Trigger used for running infra-manager apply"
}

output "cloudbuild_preview_trigger_id" {
  value       = module.bootstrap_im_cloudbuild_workspace.cloudbuild_preview_trigger_id
  description = "Trigger used for running infra-manager preview"
}

output "cloudbuild_sa" {
  value       = module.bootstrap_im_cloudbuild_workspace.cloudbuild_sa
  description = "Service account used by the Cloud Build triggers"
}

output "github_secret_id" {
  value       = module.bootstrap_im_cloudbuild_workspace.github_secret_id
  description = "The secret ID for the GitHub secret containing the personal access token."
}

output "gitlab_api_secret_id" {
  value       = module.bootstrap_im_cloudbuild_workspace.gitlab_api_secret_id
  description = "The secret ID for the GitLab secret containing the token with api access."
}

output "gitlab_read_api_secret_id" {
  value       = module.bootstrap_im_cloudbuild_workspace.gitlab_read_api_secret_id
  description = "The secret ID for the GitLab secret containing the token with read_api access."
}

output "infra_manager_sa" {
  value       = module.bootstrap_im_cloudbuild_workspace.infra_manager_sa
  description = "Service account used by Infrastructure Manager"
}

output "repo_connection_id" {
  value       = module.bootstrap_im_cloudbuild_workspace.repo_connection_id
  description = "The Cloud Build repository connection ID"
}

output "vcs_connection_id" {
  value       = module.bootstrap_im_cloudbuild_workspace.vcs_connection_id
  description = "The Cloud Build VCS host connection ID"
}
