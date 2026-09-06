output "credentials" {
  value       = module.pubsub.credentials
  description = "The credentials for Cloud IoT registry"
}

output "event_notification_subscription_names" {
  value       = module.pubsub.event_notification_subscription_names
  description = "The name list of Pub/Sub subscriptions associated with the registry"
}

output "event_notification_subscription_paths" {
  value       = module.pubsub.event_notification_subscription_paths
  description = "The path list of Pub/Sub subscriptions associated with the registry"
}

output "event_notification_topic" {
  value       = module.pubsub.event_notification_topic
  description = "The name of the Pub/Sub topic associated with the registry"
}

output "event_notification_topic_id" {
  value       = module.pubsub.event_notification_topic_id
  description = "The id of the Pub/Sub topic associated with the registry"
}

output "name" {
  value       = module.pubsub.name
  description = "The name of the Cloud IoT registry"
}

output "region" {
  value       = module.pubsub.region
  description = "The region of the Cloud IoT registry"
}

output "registry" {
  value       = module.pubsub.registry
  description = "The registry being created by this module"
}

output "state_notification_subscription_names" {
  value       = module.pubsub.state_notification_subscription_names
  description = "The name list of Pub/Sub subscriptions associated with the registry"
}

output "state_notification_subscription_paths" {
  value       = module.pubsub.state_notification_subscription_paths
  description = "The path list of Pub/Sub subscriptions associated with the registry"
}

output "state_notification_topic" {
  value       = module.pubsub.state_notification_topic
  description = "The name of the Pub/Sub topic associated with the registry"
}

output "state_notification_topic_id" {
  value       = module.pubsub.state_notification_topic_id
  description = "The id of the Pub/Sub topic associated with the registry"
}
