output "artifact_repo" {
  value       = module.bootstrap.artifact_repo
  description = "GAR Repo created to store TF Cloud Builder images"
}

output "cloudbuild_sa" {
  value       = module.bootstrap.cloudbuild_sa
  description = "SA used by Cloud Build trigger"
}

output "cloudbuild_trigger_id" {
  value       = module.bootstrap.cloudbuild_trigger_id
  description = "Trigger used for building new TF Builder"
}

output "scheduler_id" {
  value       = module.bootstrap.scheduler_id
  description = "Scheduler ID for periodically triggering TF Builder build Workflow"
}

output "workflow_id" {
  value       = module.bootstrap.workflow_id
  description = "Workflow ID for triggering new TF Builder build"
}

output "workflow_sa" {
  value       = module.bootstrap.workflow_sa
  description = "SA used by Workflow for triggering new TF Builder build"
}
