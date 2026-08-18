output "name" {
  value       = module.dataflow_dataflow_bucket.name
  description = "The name of the bucket"
}

output "region" {
  value       = module.dataflow_dataflow_bucket.region
  description = "The bucket's region location"
}
