variable "project_id" {
  description = "Google Project ID that you want Forseti deployed into"
  type        = string
  default     = ""
}

variable "suffix" {
  description = "The random suffix to append to all Forseti resources"
  type        = string
  default     = ""
}
