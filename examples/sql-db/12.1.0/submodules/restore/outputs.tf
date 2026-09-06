output "import_workflow_name" {
  value       = module.sql-db.import_workflow_name
  description = "The name for import workflow"
}

output "region" {
  value       = module.sql-db.region
  description = ""
}

output "service_account" {
  value       = module.sql-db.service_account
  description = "The service account email running the scheduler and workflow"
}
