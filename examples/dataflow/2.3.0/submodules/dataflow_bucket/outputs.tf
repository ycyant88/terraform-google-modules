output "name" {
  value       = module.dataflow.name
  description = "The name of the bucket"
}

output "region" {
  value       = module.dataflow.region
  description = "The bucket's region location"
}
