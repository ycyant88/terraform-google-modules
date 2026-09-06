variable "destination_path" {
  description = "The optional destination path"
  type        = string
  default     = null
}

variable "environment" {
  description = ""
  type        = string
  default     = null
}

variable "location" {
  description = ""
  type        = string
  default     = null
}

variable "project_id" {
  description = ""
  type        = string
  default     = null
}

variable "source_path" {
  description = "The source on the local file system"
  type        = string
  default     = null
}

variable "type" {
  description = "The type of resource to upload. Either dag, plugin or data"
  type        = string
  default     = null
}
