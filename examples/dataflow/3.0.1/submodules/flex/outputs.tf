output "container_spec_gcs_path" {
  value       = module.dataflow_flex.container_spec_gcs_path
  description = "The GCS path to the Dataflow job Flex Template."
}

output "id" {
  value       = module.dataflow_flex.id
  description = "The unique Id of the newly created Dataflow job"
}

output "name" {
  value       = module.dataflow_flex.name
  description = "The name of the dataflow job"
}

output "state" {
  value       = module.dataflow_flex.state
  description = "The state of the newly created Dataflow job"
}

output "temp_location" {
  value       = module.dataflow_flex.temp_location
  description = "The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with gs://."
}
