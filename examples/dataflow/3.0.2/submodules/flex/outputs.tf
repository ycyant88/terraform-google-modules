output "container_spec_gcs_path" {
  value       = module.dataflow.container_spec_gcs_path
  description = "The GCS path to the Dataflow job Flex Template."
}

output "id" {
  value       = module.dataflow.id
  description = "The unique Id of the newly created Dataflow job"
}

output "name" {
  value       = module.dataflow.name
  description = "The name of the dataflow job"
}

output "state" {
  value       = module.dataflow.state
  description = "The state of the newly created Dataflow job"
}

output "temp_location" {
  value       = module.dataflow.temp_location
  description = "The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with gs://."
}
