output "bigquery_editor_url" {
  value       = module.bigquery.bigquery_editor_url
  description = "The URL to launch the BigQuery editor with the sample query procedure opened"
}

output "ds_friendly_name" {
  value       = module.bigquery.ds_friendly_name
  description = "Dataset name"
}

output "lookerstudio_report_url" {
  value       = module.bigquery.lookerstudio_report_url
  description = "The URL to create a new Looker Studio report displays a sample dashboard for the e-commerce data analysis"
}

output "neos_tutorial_url" {
  value       = module.bigquery.neos_tutorial_url
  description = "The URL to launch the in-console tutorial for the EDW solution"
}

output "raw_bucket" {
  value       = module.bigquery.raw_bucket
  description = "Raw bucket name"
}
