output "console_link" {
  value       = module.log-export.console_link
  description = "The console link to the destination storage bucket"
}

output "destination_uri" {
  value       = module.log-export.destination_uri
  description = "The destination URI for the topic."
}

output "project" {
  value       = module.log-export.project
  description = "The project in which the topic was created."
}

output "pubsub_subscriber" {
  value       = module.log-export.pubsub_subscriber
  description = "Pub/Sub subscriber email (if any)"
}

output "pubsub_subscription" {
  value       = module.log-export.pubsub_subscription
  description = "Pub/Sub subscription id (if any)"
}

output "resource_id" {
  value       = module.log-export.resource_id
  description = "The resource id for the destination topic"
}

output "resource_name" {
  value       = module.log-export.resource_name
  description = "The resource name for the destination topic"
}
