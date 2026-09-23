output "members" {
  value       = module.iam.members
  description = "Members which were bound to the PubSub Topics."
}

output "pubsub_topics" {
  value       = module.iam.pubsub_topics
  description = "PubSub Topics which received for bindings."
}

output "roles" {
  value       = module.iam.roles
  description = "Roles which were assigned to members."
}
