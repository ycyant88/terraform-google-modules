variable "bucket_force_destroy" {
  description = "When deleting the GCS bucket containing the cloud function, delete all objects in the bucket first."
  type        = string
  default     = "true"
}

variable "config" {
  description = "SLO Configuration"
  type = object({
    slo_name        = string
    slo_target      = number
    slo_description = string
    service_name    = string
    feature_name    = string
    backend         = any
    # wait on https://github.com/hashicorp/terraform/issues/19898 to get a
    # resolution
    # backend = object({
    #   class       = string
    #   method      = string
    #   measurement = map(any)
    # })
    exporters = list(any)
    # wait on https://github.com/hashicorp/terraform/issues/22449 to be merged
    # type = list(object({
    #   class = string
    #   project_id = string
    #   dataset_id = string
    #   table_id = string
    #   topic_name = string
    # }))
  })
  default = ""
}

variable "error_budget_policy" {
  description = "Error budget policy config"
  type = list(object({
    error_budget_policy_step_name  = string
    measurement_window_seconds     = number
    alerting_burn_rate_threshold   = number
    urgent_notification            = bool
    overburned_consequence_message = string
    achieved_consequence_message   = string
  }))
  default = [{ "achieved_consequence_message" : "Last hour on track", "alerting_burn_rate_threshold" : 9, "error_budget_policy_step_name" : "a.Last 1 hour", "measurement_window_seconds" : 3600, "overburned_consequence_message" : "Page the SRE team to defend the SLO", "urgent_notification" : true }, { "achieved_consequence_message" : "Last 12 hours on track", "alerting_burn_rate_threshold" : 3, "error_budget_policy_step_name" : "b.Last 12 hours", "measurement_window_seconds" : 43200, "overburned_consequence_message" : "Page the SRE team to defend the SLO", "urgent_notification" : true }, { "achieved_consequence_message" : "Last week on track", "alerting_burn_rate_threshold" : 1.5, "error_budget_policy_step_name" : "c.Last 7 days", "measurement_window_seconds" : 604800, "overburned_consequence_message" : "Dev team dedicates two Engineers to the action items of the post-mortem", "urgent_notification" : false }, { "achieved_consequence_message" : "Unfreeze release, per the agreed roll-out policy", "alerting_burn_rate_threshold" : 1, "error_budget_policy_step_name" : "d.Last 28 days", "measurement_window_seconds" : 2419200, "overburned_consequence_message" : "Freeze release, unless related to reliability or security", "urgent_notification" : false }]
}

variable "function_environment_variables" {
  description = "A set of key/value environment variable pairs to assign to the function."
  type        = map(string)
  default     = {}
}

variable "function_labels" {
  description = "A set of key/value label pairs to assign to the function."
  type        = map(string)
  default     = {}
}

variable "function_source_archive_bucket_labels" {
  description = "A set of key/value label pairs to assign to the function source archive bucket."
  type        = map(string)
  default     = {}
}

variable "function_source_directory" {
  description = "The contents of this directory will be archived and used as the function source. (defaults to standard SLO generator code)"
  type        = string
  default     = ""
}

variable "function_timeout_s" {
  description = "The amount of time in seconds allotted for the execution of the function."
  type        = number
  default     = 60
}

variable "grant_iam_roles" {
  description = "Grant IAM roles to created service accounts"
  type        = string
  default     = true
}

variable "labels" {
  description = "Labels to apply to all resources created"
  type        = map(any)
  default     = {}
}

variable "message_data" {
  description = "The data to send in the topic message."
  type        = string
  default     = "dGVzdA=="
}

variable "project_id" {
  description = "SLO project id"
  type        = string
  default     = ""
}

variable "region" {
  description = "Region to deploy the Cloud Function in"
  type        = string
  default     = "us-east1"
}

variable "schedule" {
  description = "Cron-like schedule for Cloud Scheduler"
  type        = string
  default     = "* * * * */1"
}

variable "service_account_email" {
  description = "Service account email (optional)"
  type        = string
  default     = ""
}

variable "service_account_name" {
  description = "Service account name (in case the generated one is too long)"
  type        = string
  default     = ""
}

variable "slo_generator_version" {
  description = "SLO generator library version"
  type        = string
  default     = "1.1.2"
}

variable "time_zone" {
  description = "The timezone to use in scheduler"
  type        = string
  default     = "Etc/UTC"
}

variable "use_custom_service_account" {
  description = "Use a custom service account (pass service_account_email if true)"
  type        = bool
  default     = false
}
