variable "destination_path" {
  description = "The optional destination path"
  type        = string
  default     = null
}

variable "environment" {
  description = "Environment"
  type        = string
  default     = ""
}

variable "location" {
  description = "Location of the resource"
  type        = string
  default     = ""
}

variable "project_id" {
  description = "Project ID"
  type        = string
  default     = ""
}

variable "source_path" {
  description = "The source on the local file system"
  type        = string
  default     = ""
}

variable "type" {
  description = "The type of resource to upload. Either dag, plugin or data"
  type        = string
  default     = ""
}
