output "bq_views_dataset_id" {
  value       = module.log-export.bq_views_dataset_id
  description = "The ID of the BigQuery Views dataset"
}

output "cloud_function_service_account_email" {
  value       = module.log-export.cloud_function_service_account_email
  description = "The email of the service account created to be used by the Cloud Function"
}

output "cloud_scheduler_job" {
  value       = module.log-export.cloud_scheduler_job
  description = "The Cloud Scheduler job instance"
}

output "cloud_scheduler_job_name" {
  value       = module.log-export.cloud_scheduler_job_name
  description = "The name of the Cloud Scheduler job created"
}

output "pubsub_topic_name" {
  value       = module.log-export.pubsub_topic_name
  description = "Pub/Sub topic name"
}

output "source_name" {
  value       = module.log-export.source_name
  description = "The Security Command Center Source name for the \"BQ Log Alerts\" Source"
}
