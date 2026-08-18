output "import_workflow_name" {
  value       = module.sql-db_restore.import_workflow_name
  description = "The name for import workflow"
}

output "region" {
  value       = module.sql-db_restore.region
  description = "The region for running the scheduler and workflow"
}

output "service_account" {
  value       = module.sql-db_restore.service_account
  description = "The service account email running the scheduler and workflow"
}
