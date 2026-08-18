output "domain" {
  value       = module.project-factory_gsuite_group.domain
  description = "The domain of the group's organization."
}

output "email" {
  value       = module.project-factory_gsuite_group.email
  description = "The email address of the group."
}

output "name" {
  value       = module.project-factory_gsuite_group.name
  description = "The username portion of the email address of the group."
}
