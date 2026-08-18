variable "access_levels" {
  description = "A list of AccessLevel resource names that allow resources within the ServicePerimeter to be accessed from the internet. AccessLevels listed must be in the same policy as this ServicePerimeter. Referencing a nonexistent AccessLevel is a syntax error. If no AccessLevel names are listed, resources within the perimeter can only be accessed via GCP calls with request origins within the perimeter. "
  type        = list(any)
  default     = []
}

variable "description" {
  description = "Description of the regular perimeter"
  type        = string
  default     = ""
}

variable "perimeter_name" {
  description = "Name of the perimeter. Should be one unified string. Must only be letters, numbers and underscores"
  type        = string
  default     = ""
}

variable "policy" {
  description = "Name of the parent policy"
  type        = string
  default     = ""
}

variable "resources" {
  description = "A list of GCP resources that are inside of the service perimeter. Currently only projects are allowed."
  type        = list(any)
  default     = []
}

variable "restricted_services" {
  description = "GCP services that are subject to the Service Perimeter restrictions. Must contain a list of services. For example, if storage.googleapis.com is specified, access to the storage buckets inside the perimeter must meet the perimeter's access restrictions."
  type        = list(any)
  default     = []
}

variable "shared_resources" {
  description = "A map of lists of resources to share in a Bridge perimeter module. Each list should contain all or a subset of the perimeters resources"
  type        = map(any)
  default     = {}
}
