output "workflow_state" {
  value       = module.bigquery_workflow_polling.workflow_state
  description = "State of the most recent workflow execution. Used to determine how to proceed with next polling run."
}
