variable "name" {
  description = "Name of the namespace"
  type        = string
  default     = ""
}

variable "preferences" {
  description = "Name of the preferences to set in this namespace"
  type        = map(string)
  default     = ""
}
