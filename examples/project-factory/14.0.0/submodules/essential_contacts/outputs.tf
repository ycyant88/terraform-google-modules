output "essential_contacts" {
  value       = module.project-factory.essential_contacts
  description = "Essential Contact resources created"
}

output "project_id" {
  value       = module.project-factory.project_id
  description = "The GCP project you want to enable APIs on"
}
