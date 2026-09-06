output "instance" {
  value       = module.data-fusion.instance
  description = "The created CDF instance"
}

output "tenant_project" {
  value       = module.data-fusion.tenant_project
  description = "The Google managed tenant project ID in which the instance will run its jobs"
}
