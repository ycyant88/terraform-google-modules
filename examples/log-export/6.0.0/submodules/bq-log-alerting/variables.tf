variable "dry_run" {
  description = "Enable dry_run execution of the Cloud Function. If is true it will just print the object the would be converted as a finding"
  type        = bool
  default     = false
}

variable "function_memory" {
  description = "The amount of memory in megabytes allotted for the Cloud function to use."
  type        = number
  default     = "256"
}

variable "function_timeout" {
  description = "The amount of time in seconds allotted for the execution of the function."
  type        = number
  default     = "540"
}

variable "job_schedule" {
  description = "The schedule on which the job will be executed in the unix-cron string format (https://cloud.google.com/scheduler/docs/configuring/cron-job-schedules#defining_the_job_schedule). Defaults to 15 minutes."
  type        = string
  default     = "*/15 * * * *"
}

variable "logging_project" {
  description = "The project to deploy the tool."
  type        = string
  default     = ""
}

variable "org_id" {
  description = "The organization ID for the associated services"
  type        = string
  default     = ""
}

variable "region" {
  description = "Region for BigQuery resources."
  type        = string
  default     = ""
}

variable "source_name" {
  description = "The Security Command Center Source name for the \"BQ Log Alerts\" Source if the source had been created before. The format is organizations/<ORG_ID>/sources/<SOURCE_ID>"
  type        = string
  default     = ""
}

variable "time_window_quantity" {
  description = "The time window quantity used in the query in the view in BigQuery."
  type        = string
  default     = "20"
}

variable "time_window_unit" {
  description = "The time window unit used in the query in the view in BigQuery. Valid values are 'MICROSECOND', 'MILLISECOND', 'SECOND', 'MINUTE', 'HOUR'"
  type        = string
  default     = "MINUTE"
}
