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

output "temp_gcs_location" {
  value       = module.dataflow.temp_gcs_location
  description = "The GCS path for the Dataflow job's temporary data."
}

output "template_gcs_path" {
  value       = module.dataflow.template_gcs_path
  description = "The GCS path to the Dataflow job template."
}
