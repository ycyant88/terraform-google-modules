output "service_projects" {
  value       = module.network_fabric-net-svpc-access.service_projects
  description = "Project ids of the services with access to all subnets."
}
