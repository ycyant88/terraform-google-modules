variable "available_memory_mb" {
  description = "The amount of memory in megabytes allotted for the function to use."
  type        = number
  default     = 256
}

variable "bucket_force_destroy" {
  description = "When deleting the GCS bucket containing the cloud function, delete all objects in the bucket first."
  type        = bool
  default     = false
}

variable "bucket_labels" {
  description = "A set of key/value label pairs to assign to the function source archive bucket."
  type        = map(string)
  default     = {}
}

variable "bucket_name" {
  description = "The name to apply to the bucket. Will default to a string of the function name."
  type        = string
  default     = ""
}

variable "description" {
  description = "The description of the function."
  type        = string
  default     = "Processes events."
}

variable "entry_point" {
  description = "The name of a method in the function source which will be invoked when the function is executed."
  type        = string
  default     = ""
}

variable "environment_variables" {
  description = "A set of key/value environment variable pairs to assign to the function."
  type        = map(string)
  default     = {}
}

variable "event_trigger" {
  description = "A source that fires events in response to a condition in another service."
  type        = map(string)
  default     = ""
}

variable "event_trigger_failure_policy_retry" {
  description = "A toggle to determine if the function should be retried on failure."
  type        = bool
  default     = false
}

variable "labels" {
  description = "A set of key/value label pairs to assign to the Cloud Function."
  type        = map(string)
  default     = {}
}

variable "name" {
  description = "The name to apply to any nameable resources."
  type        = string
  default     = ""
}

variable "project_id" {
  description = "The ID of the project to which resources will be applied."
  type        = string
  default     = ""
}

variable "region" {
  description = "The region in which resources will be applied."
  type        = string
  default     = ""
}

variable "runtime" {
  description = "The runtime in which the function will be executed."
  type        = string
  default     = ""
}

variable "service_account_email" {
  description = "The service account to run the function as."
  type        = string
  default     = ""
}

variable "source_directory" {
  description = "The pathname of the directory which contains the function source code."
  type        = string
  default     = ""
}

variable "timeout_s" {
  description = "The amount of time in seconds allotted for the execution of the function."
  type        = number
  default     = 60
}
