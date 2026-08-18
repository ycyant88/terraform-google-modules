output "backup_workflow_name" {
  value       = module.sql-db_backup.backup_workflow_name
  description = "The name for internal backup workflow"
}

output "export_workflow_name" {
  value       = module.sql-db_backup.export_workflow_name
  description = "The name for export workflow"
}

output "region" {
  value       = module.sql-db_backup.region
  description = ""
}

output "service_account" {
  value       = module.sql-db_backup.service_account
  description = "The service account email running the scheduler and workflow"
}
