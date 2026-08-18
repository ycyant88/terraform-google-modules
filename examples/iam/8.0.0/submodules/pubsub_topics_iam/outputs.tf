output "members" {
  value       = module.iam_pubsub_topics_iam.members
  description = "Members which were bound to the PubSub Topics."
}

output "pubsub_topics" {
  value       = module.iam_pubsub_topics_iam.pubsub_topics
  description = "PubSub Topics which received for bindings."
}

output "roles" {
  value       = module.iam_pubsub_topics_iam.roles
  description = "Roles which were assigned to members."
}
