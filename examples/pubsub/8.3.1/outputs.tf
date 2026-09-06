output "env_vars" {
  value       = module.pubsub.env_vars
  description = "Map of pull subscription IDs, keyed by project_subscription name for environment variables."
}

output "id" {
  value       = module.pubsub.id
  description = "The ID of the Pub/Sub topic"
}

output "subscription_names" {
  value       = module.pubsub.subscription_names
  description = "The name list of Pub/Sub subscriptions"
}

output "subscription_paths" {
  value       = module.pubsub.subscription_paths
  description = "The path list of Pub/Sub subscriptions"
}

output "topic" {
  value       = module.pubsub.topic
  description = "The name of the Pub/Sub topic"
}

output "topic_labels" {
  value       = module.pubsub.topic_labels
  description = "Labels assigned to the Pub/Sub topic"
}

output "uri" {
  value       = module.pubsub.uri
  description = "The URI of the Pub/Sub topic"
}
