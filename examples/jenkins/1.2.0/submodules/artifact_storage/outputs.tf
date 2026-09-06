output "artifact_bucket" {
  value       = module.jenkins.artifact_bucket
  description = "Artifact bucket name"
}

output "jobs" {
  value       = module.jenkins.jobs
  description = "List of rendered jobs"
}
