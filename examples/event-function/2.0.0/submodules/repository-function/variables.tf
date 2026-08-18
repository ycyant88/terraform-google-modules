variable "available_memory_mb" {
  description = "The amount of memory in megabytes allotted for the function to use."
  type        = number
  default     = 256
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

variable "ingress_settings" {
  description = "The ingress settings for the function. Allowed values are ALLOW_ALL, ALLOW_INTERNAL_AND_GCLB and ALLOW_INTERNAL_ONLY. Changes to this field will recreate the cloud function."
  type        = string
  default     = "ALLOW_ALL"
}

variable "labels" {
  description = "A set of key/value label pairs to assign to any lableable resources."
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
  default     = "nodejs6"
}

variable "source_repository_url" {
  description = "The URL of the repository which contains the function source code."
  type        = string
  default     = ""
}

variable "timeout_s" {
  description = "The amount of time in seconds allotted for the execution of the function."
  type        = number
  default     = 60
}

variable "vpc_connector" {
  description = "The VPC Network Connector that this cloud function can connect to. It should be set up as fully-qualified URI. The format of this field is projects/*/locations/*/connectors/*."
  type        = string
  default     = ""
}

variable "vpc_connector_egress_settings" {
  description = "The egress settings for the connector, controlling what traffic is diverted through it. Allowed values are ALL_TRAFFIC and PRIVATE_RANGES_ONLY. If unset, this field preserves the previously set value."
  type        = string
  default     = ""
}
