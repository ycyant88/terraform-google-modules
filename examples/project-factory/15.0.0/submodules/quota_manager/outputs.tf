output "quota_overrides" {
  value       = module.project-factory_quota_manager.quota_overrides
  description = "The server-generated names of the quota override."
}
