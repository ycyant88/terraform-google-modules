output "exporters" {
  value       = module.slo_slo-pipeline.exporters
  description = "Exporter config"
}

output "function_bucket_name" {
  value       = module.slo_slo-pipeline.function_bucket_name
  description = "Cloud Function bucket name"
}

output "function_name" {
  value       = module.slo_slo-pipeline.function_name
  description = "Cloud Function name"
}

output "project_id" {
  value       = module.slo_slo-pipeline.project_id
  description = "Project id"
}

output "pubsub_topic_name" {
  value       = module.slo_slo-pipeline.pubsub_topic_name
  description = "Ingress PubSub topic to SLO pipeline"
}

output "service_account_email" {
  value       = module.slo_slo-pipeline.service_account_email
  description = "Service account email used to run the Cloud Function"
}
