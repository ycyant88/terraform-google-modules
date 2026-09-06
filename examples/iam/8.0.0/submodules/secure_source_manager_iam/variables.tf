variable "bindings" {
  description = "Map of role (key) and list of members (value) to add the IAM policies/bindings"
  type        = map(any)
  default     = ""
}

variable "entity_ids" {
  description = "List of secure source manager instance or repository names"
  type = object({
    instance_ids   = optional(list(string))
    repository_ids = optional(list(string))
  })
  default = ""
}

variable "location" {
  description = "The location for the secure source manager Instance"
  type        = string
  default     = ""
}

variable "mode" {
  description = "Mode for adding the IAM policies/bindings, additive and authoritative"
  type        = string
  default     = "additive"
}

variable "project" {
  description = "Project to add the IAM policies/bindings"
  type        = string
  default     = ""
}
