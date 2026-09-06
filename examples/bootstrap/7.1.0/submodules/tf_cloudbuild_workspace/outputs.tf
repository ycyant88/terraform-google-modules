output "artifacts_bucket" {
  value       = module.bootstrap.artifacts_bucket
  description = "Bucket for storing TF plans"
}

output "cloudbuild_apply_trigger_id" {
  value       = module.bootstrap.cloudbuild_apply_trigger_id
  description = "Trigger used for running TF apply"
}

output "cloudbuild_plan_trigger_id" {
  value       = module.bootstrap.cloudbuild_plan_trigger_id
  description = "Trigger used for running TF plan"
}

output "cloudbuild_sa" {
  value       = module.bootstrap.cloudbuild_sa
  description = "SA used by Cloud Build triggers"
}

output "logs_bucket" {
  value       = module.bootstrap.logs_bucket
  description = "Bucket for storing TF logs"
}

output "state_bucket" {
  value       = module.bootstrap.state_bucket
  description = "Bucket for storing TF state"
}
