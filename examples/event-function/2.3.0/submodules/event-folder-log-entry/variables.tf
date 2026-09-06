variable "filter" {
  description = "The filter to apply when exporting logs."
  type        = string
  default     = ""
}

variable "folder_id" {
  description = "The ID of the folder to look for changes."
  type        = string
  default     = ""
}

variable "include_children" {
  description = "Determines whether or not to include folder's children in the sink export. If true, logs associated with child projects are also exported; otherwise only logs relating to the provided folder are included."
  type        = bool
  default     = false
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

variable "project_id" {
  description = "The ID of the project to which resources will be applied."
  type        = string
  default     = ""
}
