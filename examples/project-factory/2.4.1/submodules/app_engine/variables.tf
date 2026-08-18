variable "auth_domain" {
  description = "The domain to authenticate users with when using App Engine's User API."
  type        = string
  default     = ""
}

variable "feature_settings" {
  description = "A list of maps of optional settings to configure specific App Engine features."
  type        = list(any)
  default     = []
}

variable "location_id" {
  description = "The location to serve the app from."
  type        = string
  default     = ""
}

variable "project_id" {
  description = "The project to enable app engine on."
  type        = string
  default     = ""
}

variable "serving_status" {
  description = "The serving status of the app."
  type        = string
  default     = "SERVING"
}
