variable "bucket_force_destroy" {
  description = "When deleting the GCS bucket containing the cloud function, delete all objects in the bucket first."
  type        = bool
  default     = true
}

variable "bucket_name" {
  description = "The name to apply to the bucket. Will default to a string of <project-id>-scheduled-function-XXXX> with XXXX being random characters."
  type        = string
  default     = ""
}

variable "function_available_memory_mb" {
  description = "The amount of memory in megabytes allotted for the function to use."
  type        = number
  default     = 256
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
  type        = map(string)
  default     = {}
}

variable "function_event_trigger_failure_policy_retry" {
  description = "A toggle to determine if the function should be retried on failure."
  type        = bool
  default     = false
}

variable "function_labels" {
  description = "A set of key/value label pairs to assign to the function."
  type        = map(string)
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
  default     = "nodejs10"
}

variable "function_service_account_email" {
  description = "The service account to run the function as."
  type        = string
  default     = ""
}

variable "function_source_archive_bucket_labels" {
  description = "A set of key/value label pairs to assign to the function source archive bucket."
  type        = map(string)
  default     = {}
}

variable "function_source_dependent_files" {
  description = "A list of any terraform created local_files that the module will wait for before creating the archive."
  type = list(object({
    filename = string
    id       = string
  }))
  default = []
}

variable "function_source_directory" {
  description = "The contents of this directory will be archived and used as the function source."
  type        = string
  default     = ""
}

variable "function_timeout_s" {
  description = "The amount of time in seconds allotted for the execution of the function."
  type        = number
  default     = 60
}

variable "grant_token_creator" {
  description = "Specify true if you want to add token creator role to the default Pub/Sub SA"
  type        = bool
  default     = false
}

variable "job_description" {
  description = "Addition text to describe the job"
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

variable "scheduler_job" {
  description = "An existing Cloud Scheduler job instance"
  type        = object({ name = string })
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

variable "vpc_connector" {
  description = "The VPC Network Connector that this cloud function can connect to. It should be set up as fully-qualified URI. The format of this field is projects//locations//connectors/*."
  type        = string
  default     = ""
}

variable "vpc_connector_egress_settings" {
  description = "The egress settings for the connector, controlling what traffic is diverted through it. Allowed values are ALL_TRAFFIC and PRIVATE_RANGES_ONLY. If unset, this field preserves the previously set value."
  type        = string
  default     = ""
}
