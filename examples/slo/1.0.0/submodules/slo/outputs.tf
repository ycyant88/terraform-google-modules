output "config" {
  value       = module.slo_slo.config
  description = "SLO Config"
}

output "error_budget_policy_url" {
  value       = module.slo_slo.error_budget_policy_url
  description = "Error budget policy GCS URL"
}

output "function_bucket_name" {
  value       = module.slo_slo.function_bucket_name
  description = "Cloud Function bucket name"
}

output "function_name" {
  value       = module.slo_slo.function_name
  description = "Cloud Function name"
}

output "function_zip_output_path" {
  value       = module.slo_slo.function_zip_output_path
  description = "Cloud Function zip output path"
}

output "project_id" {
  value       = module.slo_slo.project_id
  description = "Project id"
}

output "scheduler_job_name" {
  value       = module.slo_slo.scheduler_job_name
  description = "Cloud Scheduler job name"
}

output "service_account_email" {
  value       = module.slo_slo.service_account_email
  description = "Service account email used to run the Cloud Function"
}

output "slo_config_url" {
  value       = module.slo_slo.slo_config_url
  description = "SLO Config GCS URL"
}
