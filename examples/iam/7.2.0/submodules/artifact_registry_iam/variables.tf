variable "bindings" {
  description = "Map of role (key) and list of members (value) to add the IAM policies/bindings"
  type        = map(list(string))
  default     = {}
}

variable "location" {
  description = "Location of the provided artifact registry repositories"
  type        = string
  default     = ""
}

variable "mode" {
  description = "Mode for adding the IAM policies/bindings, additive and authoritative"
  type        = string
  default     = "additive"
}

variable "project" {
  description = "Project where the artifact registry repositories are placed"
  type        = string
  default     = ""
}

variable "repositories" {
  description = "Artifact registry repositories list to add the IAM policies/bindings"
  type        = list(string)
  default     = []
}
