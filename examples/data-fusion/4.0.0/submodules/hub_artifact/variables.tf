variable "artifact_version" {
  description = "Version of the artifact."
  type        = string
  default     = ""
}

variable "bucket" {
  description = "Name of the GCS bucket for the hub."
  type        = string
  default     = ""
}

variable "name" {
  description = "Name of the artifact within the package."
  type        = string
  default     = ""
}

variable "namespace" {
  description = "Namespace to create the artifact in."
  type        = string
  default     = null
}

variable "package" {
  description = "Name of the package within the hub bucket that contains the artifact."
  type        = string
  default     = ""
}

variable "package_version" {
  description = "Version of the package. If not set, the artifact version is used."
  type        = string
  default     = null
}
