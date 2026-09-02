output "artifact_repo" {
  value       = module.bootstrap_tf_cloudbuild_builder.artifact_repo
  description = "GAR Repo created to store TF Cloud Builder images"
}

output "cloudbuild_sa" {
  value       = module.bootstrap_tf_cloudbuild_builder.cloudbuild_sa
  description = "SA used by Cloud Build trigger"
}

output "cloudbuild_trigger_id" {
  value       = module.bootstrap_tf_cloudbuild_builder.cloudbuild_trigger_id
  description = "Trigger used for building new TF Builder"
}

output "scheduler_id" {
  value       = module.bootstrap_tf_cloudbuild_builder.scheduler_id
  description = "Scheduler ID for periodically triggering TF Builder build Workflow"
}

output "workflow_id" {
  value       = module.bootstrap_tf_cloudbuild_builder.workflow_id
  description = "Workflow ID for triggering new TF Builder build"
}

output "workflow_sa" {
  value       = module.bootstrap_tf_cloudbuild_builder.workflow_sa
  description = "SA used by Workflow for triggering new TF Builder build"
}
