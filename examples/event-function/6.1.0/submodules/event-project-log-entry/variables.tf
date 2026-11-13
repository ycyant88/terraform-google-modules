variable "filter" {
  description = "The filter to apply when exporting logs."
  type        = string
  default     = ""
}

variable "labels" {
  description = "A set of key/value label pairs to assign to any labelable resources."
  type        = map(string)
  default     = {}
}

variable "name" {
  description = "The name to apply to any nameable resources."
  type        = string
  default     = ""
}

variable "parent_resource_type" {
  description = "The GCP resource in which you create the log sink. The value must not be computed, and must be one of the following: 'project', 'folder', 'billing_account', or 'organization'."
  type        = string
  default     = "project"
}

variable "project_id" {
  description = "The ID of the project to which resources will be applied."
  type        = string
  default     = ""
}
