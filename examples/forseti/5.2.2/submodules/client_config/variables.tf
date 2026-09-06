variable "client_enabled" {
  description = "Enable Client VM"
  type        = bool
  default     = true
}

variable "client_gcs_module" {
  description = "The Forseti Client GCS module"
  type        = string
  default     = ""
}

variable "forseti_home" {
  description = "Forseti installation directory"
  type        = string
  default     = "$USER_HOME/forseti-security"
}

variable "server_address" {
  description = "The Forseti server address"
  type        = string
  default     = ""
}
