variable "destination_path" {
  description = "The optional destination path"
  type        = string
  default     = ""
}

variable "environment" {
  description = ""
  type        = string
  default     = ""
}

variable "location" {
  description = ""
  type        = string
  default     = ""
}

variable "project_id" {
  description = ""
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
