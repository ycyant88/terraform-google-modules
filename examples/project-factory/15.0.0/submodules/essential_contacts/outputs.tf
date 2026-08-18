output "essential_contacts" {
  value       = module.project-factory_essential_contacts.essential_contacts
  description = "Essential Contact resources created"
}

output "project_id" {
  value       = module.project-factory_essential_contacts.project_id
  description = "The GCP project you want to enable APIs on"
}
