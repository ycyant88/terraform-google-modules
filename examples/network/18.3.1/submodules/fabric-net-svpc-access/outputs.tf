output "service_projects" {
  value       = module.network.service_projects
  description = "Project ids of the services with access to all subnets."
}
