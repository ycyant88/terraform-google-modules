output "code_bucket" {
  value       = module.project-factory.code_bucket
  description = "The GCS bucket code is being stored in for this app."
}

output "default_bucket" {
  value       = module.project-factory.default_bucket
  description = "The GCS bucket content is being stored in for this app."
}

output "default_hostname" {
  value       = module.project-factory.default_hostname
  description = "The default hostname for this app."
}

output "location_id" {
  value       = module.project-factory.location_id
  description = "The location app engine is serving from"
}

output "name" {
  value       = module.project-factory.name
  description = "Unique name of the app, usually apps/{PROJECT_ID}."
}

output "url_dispatch_rule" {
  value       = module.project-factory.url_dispatch_rule
  description = "A list of dispatch rule blocks. Each block has a domain, path, and service field."
}
