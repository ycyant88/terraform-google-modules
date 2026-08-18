output "credentials" {
  value       = module.pubsub_cloudiot.credentials
  description = "The credentials for Cloud IoT registry"
}

output "event_notification_subscription_names" {
  value       = module.pubsub_cloudiot.event_notification_subscription_names
  description = "The name list of Pub/Sub subscriptions associated with the registry"
}

output "event_notification_subscription_paths" {
  value       = module.pubsub_cloudiot.event_notification_subscription_paths
  description = "The path list of Pub/Sub subscriptions associated with the registry"
}

output "event_notification_topic" {
  value       = module.pubsub_cloudiot.event_notification_topic
  description = "The name of the Pub/Sub topic associated with the registry"
}

output "event_notification_topic_id" {
  value       = module.pubsub_cloudiot.event_notification_topic_id
  description = "The id of the Pub/Sub topic associated with the registry"
}

output "name" {
  value       = module.pubsub_cloudiot.name
  description = "The name of the Cloud IoT registry"
}

output "region" {
  value       = module.pubsub_cloudiot.region
  description = "The region of the Cloud IoT registry"
}

output "registry" {
  value       = module.pubsub_cloudiot.registry
  description = "The registry being created by this module"
}

output "state_notification_subscription_names" {
  value       = module.pubsub_cloudiot.state_notification_subscription_names
  description = "The name list of Pub/Sub subscriptions associated with the registry"
}

output "state_notification_subscription_paths" {
  value       = module.pubsub_cloudiot.state_notification_subscription_paths
  description = "The path list of Pub/Sub subscriptions associated with the registry"
}

output "state_notification_topic" {
  value       = module.pubsub_cloudiot.state_notification_topic
  description = "The name of the Pub/Sub topic associated with the registry"
}

output "state_notification_topic_id" {
  value       = module.pubsub_cloudiot.state_notification_topic_id
  description = "The id of the Pub/Sub topic associated with the registry"
}
