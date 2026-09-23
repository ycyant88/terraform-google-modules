output "members" {
  value       = module.iam.members
  description = "Members which were bound to the PubSub Subscription."
}

output "pubsub_subscriptions" {
  value       = module.iam.pubsub_subscriptions
  description = "PubSub Subscriptions which received bindings."
}

output "roles" {
  value       = module.iam.roles
  description = "Roles which were assigned to members."
}
