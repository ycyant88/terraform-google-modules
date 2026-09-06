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
