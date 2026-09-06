variable "org_id" {
  description = "The organization ID where the custom Forseti roles will be created."
  type        = string
  default     = ""
}

variable "suffix" {
  description = "A suffix to append to the role IDs."
  type        = string
  default     = ""
}
