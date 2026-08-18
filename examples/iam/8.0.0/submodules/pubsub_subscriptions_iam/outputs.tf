output "members" {
  value       = module.iam_pubsub_subscriptions_iam.members
  description = "Members which were bound to the PubSub Subscription."
}

output "pubsub_subscriptions" {
  value       = module.iam_pubsub_subscriptions_iam.pubsub_subscriptions
  description = "PubSub Subscriptions which received bindings."
}

output "roles" {
  value       = module.iam_pubsub_subscriptions_iam.roles
  description = "Roles which were assigned to members."
}
