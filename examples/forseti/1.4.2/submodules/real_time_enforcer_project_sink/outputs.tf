output "sink_name" {
  value       = module.forseti_real_time_enforcer_project_sink.sink_name
  description = "The project log sink name."
}

output "topic" {
  value       = module.forseti_real_time_enforcer_project_sink.topic
  description = "The pubsub topic receiving exported logs."
}
