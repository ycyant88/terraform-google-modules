output "audit_log_config" {
  value       = module.iam_audit_config.audit_log_config
  description = "Map of log type and exempted members to be added to service"
}
