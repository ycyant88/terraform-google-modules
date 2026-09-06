output "exporters" {
  value       = module.slo.exporters
  description = "Exporter config"
}

output "function_bucket_name" {
  value       = module.slo.function_bucket_name
  description = "Cloud Function bucket name"
}

output "function_name" {
  value       = module.slo.function_name
  description = "Cloud Function name"
}

output "project_id" {
  value       = module.slo.project_id
  description = "Project id"
}

output "pubsub_topic_name" {
  value       = module.slo.pubsub_topic_name
  description = "Ingress PubSub topic to SLO pipeline"
}

output "service_account_email" {
  value       = module.slo.service_account_email
  description = "Service account email used to run the Cloud Function"
}
