output "artifacts_bucket" {
  value       = module.bootstrap_tf_cloudbuild_workspace.artifacts_bucket
  description = "Bucket for storing TF plans"
}

output "cloudbuild_apply_trigger_id" {
  value       = module.bootstrap_tf_cloudbuild_workspace.cloudbuild_apply_trigger_id
  description = "Trigger used for running TF apply"
}

output "cloudbuild_plan_trigger_id" {
  value       = module.bootstrap_tf_cloudbuild_workspace.cloudbuild_plan_trigger_id
  description = "Trigger used for running TF plan"
}

output "cloudbuild_sa" {
  value       = module.bootstrap_tf_cloudbuild_workspace.cloudbuild_sa
  description = "SA used by Cloud Build triggers"
}

output "logs_bucket" {
  value       = module.bootstrap_tf_cloudbuild_workspace.logs_bucket
  description = "Bucket for storing TF logs"
}

output "state_bucket" {
  value       = module.bootstrap_tf_cloudbuild_workspace.state_bucket
  description = "Bucket for storing TF state"
}
