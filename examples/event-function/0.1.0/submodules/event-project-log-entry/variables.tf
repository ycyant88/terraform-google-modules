variable "filter" {
  description = "The filter to apply when exporting logs."
  type        = string
  default     = ""
}

variable "labels" {
  description = "A set of key/value label pairs to assign to any labelable resources."
  type        = map(any)
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
