output "name" {
  value       = module.scheduled-function.name
  description = "The name of the job created"
}

output "pubsub_topic_name" {
  value       = module.scheduled-function.pubsub_topic_name
  description = "PubSub topic name"
}

output "scheduler_job" {
  value       = module.scheduled-function.scheduler_job
  description = "The Cloud Scheduler job instance"
}
