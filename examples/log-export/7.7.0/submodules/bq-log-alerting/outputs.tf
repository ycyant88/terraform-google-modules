output "bq_views_dataset_id" {
  value       = module.log-export_bq-log-alerting.bq_views_dataset_id
  description = "The ID of the BigQuery Views dataset"
}

output "cloud_function_service_account_email" {
  value       = module.log-export_bq-log-alerting.cloud_function_service_account_email
  description = "The email of the service account created to be used by the Cloud Function"
}

output "cloud_scheduler_job" {
  value       = module.log-export_bq-log-alerting.cloud_scheduler_job
  description = "The Cloud Scheduler job instance"
}

output "cloud_scheduler_job_name" {
  value       = module.log-export_bq-log-alerting.cloud_scheduler_job_name
  description = "The name of the Cloud Scheduler job created"
}

output "pubsub_topic_name" {
  value       = module.log-export_bq-log-alerting.pubsub_topic_name
  description = "Pub/Sub topic name"
}

output "source_name" {
  value       = module.log-export_bq-log-alerting.source_name
  description = "The Security Command Center Source name for the \"BQ Log Alerts\" Source"
}
