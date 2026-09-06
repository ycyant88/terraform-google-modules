variable "billing_account" {
  description = "Billing Account used to provision resources."
  type        = string
  default     = ""
}

variable "clean_up_billing_sinks" {
  description = "Clean up Billing Account Sinks."
  type        = bool
  default     = false
}

variable "clean_up_org_level_cai_feeds" {
  description = "Clean up organization level Cloud Asset Inventory Feeds."
  type        = bool
  default     = false
}

variable "clean_up_org_level_scc_notifications" {
  description = "Clean up organization level Security Command Center notifications."
  type        = bool
  default     = false
}

variable "clean_up_org_level_tag_keys" {
  description = "Clean up organization level Tag Keys."
  type        = bool
  default     = false
}

variable "function_timeout_s" {
  description = "The amount of time in seconds allotted for the execution of the function."
  type        = number
  default     = 500
}

variable "job_schedule" {
  description = "Cleaner function run frequency, in cron syntax"
  type        = string
  default     = "*/5 * * * *"
}

variable "list_billing_sinks_page_size" {
  description = "The maximum number of Billing Account Log Sinks to return in the call to BillingAccountsSinksService.List service."
  type        = number
  default     = 200
}

variable "list_scc_notifications_page_size" {
  description = "The maximum number of notification configs to return in the call to ListNotificationConfigs service. The minimun value is 1 and the maximum value is 1000."
  type        = number
  default     = 500
}

variable "max_project_age_in_hours" {
  description = "The maximum number of hours that a GCP project, selected by target_tag_name and target_tag_value, can exist"
  type        = number
  default     = 6
}

variable "organization_id" {
  description = "The organization ID whose projects to clean up"
  type        = string
  default     = ""
}

variable "project_id" {
  description = "The project ID to host the scheduled function in"
  type        = string
  default     = ""
}

variable "region" {
  description = "The region the project is in (App Engine specific)"
  type        = string
  default     = ""
}

variable "target_billing_sinks" {
  description = "List of Billing Account Log Sinks names regex that will be deleted. Regex example: .*/sinks/sk-c-logging-.*-billing-.* "
  type        = list(string)
  default     = []
}

variable "target_excluded_labels" {
  description = "Map of project lablels that won't be deleted."
  type        = map(string)
  default     = {}
}

variable "target_excluded_tagkeys" {
  description = "List of organization Tag Key short names that won't be deleted."
  type        = list(string)
  default     = []
}

variable "target_folder_id" {
  description = "Folder ID to delete all projects under."
  type        = string
  default     = ""
}

variable "target_included_feeds" {
  description = "List of organization level Cloud Asset Inventory feeds that should be deleted. Regex example: .*/feeds/fd-cai-monitoring-.* "
  type        = list(string)
  default     = []
}

variable "target_included_labels" {
  description = "Map of project lablels that will be deleted."
  type        = map(string)
  default     = {}
}

variable "target_included_scc_notifications" {
  description = "List of organization Security Command Center notifications names regex that will be deleted. Regex example: .*/notificationConfigs/scc-notify-.* "
  type        = list(string)
  default     = []
}

variable "target_tag_name" {
  description = "The name of a tag to filter GCP projects on for consideration by the cleanup utility (legacy, use target_included_labels map instead)."
  type        = string
  default     = ""
}

variable "target_tag_value" {
  description = "The value of a tag to filter GCP projects on for consideration by the cleanup utility (legacy, use target_included_labels map instead)."
  type        = string
  default     = ""
}

variable "topic_name" {
  description = "Name of pubsub topic connecting the scheduled projects cleanup function"
  type        = string
  default     = "pubsub_scheduled_project_cleaner"
}
