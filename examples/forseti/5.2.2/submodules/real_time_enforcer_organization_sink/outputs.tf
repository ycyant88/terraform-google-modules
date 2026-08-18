output "sink_name" {
  value       = module.forseti_real_time_enforcer_organization_sink.sink_name
  description = "The organization log sink name."
}

output "topic" {
  value       = module.forseti_real_time_enforcer_organization_sink.topic
  description = "The pubsub topic receiving exported logs."
}
