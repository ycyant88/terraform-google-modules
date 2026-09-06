variable "function_timeout_s" {
  description = "The amount of time in seconds allotted for the execution of the function."
  type        = number
  default     = 60
}

variable "job_schedule" {
  description = "Cleaner function run frequency, in cron syntax"
  type        = string
  default     = "*/5 * * * *"
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

variable "target_excluded_labels" {
  description = "Map of project lablels that won't be deleted."
  type        = map(string)
  default     = {}
}

variable "target_folder_id" {
  description = "Folder ID to delete all projects under."
  type        = string
  default     = ""
}

variable "target_included_labels" {
  description = "Map of project lablels that will be deleted."
  type        = map(string)
  default     = {}
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
