variable "create_group" {
  description = "Whether to create the group or not"
  type        = string
  default     = "false"
}

variable "domain" {
  description = "The domain name"
  type        = string
  default     = ""
}

variable "name" {
  description = "The name of the group."
  type        = string
  default     = ""
}

variable "org_id" {
  description = "The organization ID."
  type        = string
  default     = ""
}
