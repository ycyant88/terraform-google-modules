output "filter" {
  value       = module.log-export.filter
  description = "The filter to be applied when exporting logs."
}

output "log_sink_resource_id" {
  value       = module.log-export.log_sink_resource_id
  description = "The resource ID of the log sink that was created."
}

output "log_sink_resource_name" {
  value       = module.log-export.log_sink_resource_name
  description = "The resource name of the log sink that was created."
}

output "parent_resource_id" {
  value       = module.log-export.parent_resource_id
  description = "The ID of the GCP resource in which you create the log sink."
}

output "writer_identity" {
  value       = module.log-export.writer_identity
  description = "The service account that logging uses to write log entries to the destination."
}
