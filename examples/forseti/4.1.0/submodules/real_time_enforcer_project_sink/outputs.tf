output "sink_name" {
  value       = module.forseti.sink_name
  description = "The project log sink name."
}

output "topic" {
  value       = module.forseti.topic
  description = "The pubsub topic receiving exported logs."
}
