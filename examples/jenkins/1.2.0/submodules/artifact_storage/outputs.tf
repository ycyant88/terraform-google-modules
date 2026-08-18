output "artifact_bucket" {
  value       = module.jenkins_artifact_storage.artifact_bucket
  description = "Artifact bucket name"
}

output "jobs" {
  value       = module.jenkins_artifact_storage.jobs
  description = "List of rendered jobs"
}
