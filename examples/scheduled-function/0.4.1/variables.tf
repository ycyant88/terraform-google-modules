variable "bucket_name" {
  description = "The name to apply to the bucket. Will default to a string of <project-id>-scheduled-function-XXXX> with XXXX being random characters."
  type        = string
  default     = ""
}

variable "function_available_memory_mb" {
  description = "The amount of memory in megabytes allotted for the function to use."
  type        = string
  default     = "256"
}

variable "function_description" {
  description = "The description of the function."
  type        = string
  default     = "Processes log export events provided through a Pub/Sub topic subscription."
}

variable "function_entry_point" {
  description = "The name of a method in the function source which will be invoked when the function is executed."
  type        = string
  default     = ""
}

variable "function_environment_variables" {
  description = "A set of key/value environment variable pairs to assign to the function."
  type        = map(any)
  default     = {}
}

variable "function_event_trigger_failure_policy_retry" {
  description = "A toggle to determine if the function should be retried on failure."
  type        = string
  default     = "false"
}

variable "function_labels" {
  description = "A set of key/value label pairs to assign to the function."
  type        = map(any)
  default     = {}
}

variable "function_name" {
  description = "The name to apply to the function"
  type        = string
  default     = ""
}

variable "function_runtime" {
  description = "The runtime in which the function will be executed."
  type        = string
  default     = "nodejs6"
}

variable "function_service_account_email" {
  description = "The service account to run the function as."
  type        = string
  default     = ""
}

variable "function_source_archive_bucket_labels" {
  description = "A set of key/value label pairs to assign to the function source archive bucket."
  type        = map(any)
  default     = {}
}

variable "function_source_directory" {
  description = "The contents of this directory will be archived and used as the function source."
  type        = string
  default     = ""
}

variable "function_timeout_s" {
  description = "The amount of time in seconds allotted for the execution of the function."
  type        = string
  default     = "60"
}

variable "job_description" {
  description = "Addition text to describet the job"
  type        = string
  default     = ""
}

variable "job_name" {
  description = "The name of the scheduled job to run"
  type        = string
  default     = ""
}

variable "job_schedule" {
  description = "The job frequency, in cron syntax"
  type        = string
  default     = "*/2 * * * *"
}

variable "message_data" {
  description = "The data to send in the topic message."
  type        = string
  default     = "dGVzdA=="
}

variable "project_id" {
  description = "The ID of the project where the resources will be created"
  type        = string
  default     = ""
}

variable "region" {
  description = "The region in which resources will be applied."
  type        = string
  default     = ""
}

variable "time_zone" {
  description = "The timezone to use in scheduler"
  type        = string
  default     = "Etc/UTC"
}

variable "topic_name" {
  description = "Name of pubsub topic connecting the scheduled job and the function"
  type        = string
  default     = "test-topic"
}
