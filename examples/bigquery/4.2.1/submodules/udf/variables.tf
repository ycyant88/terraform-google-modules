variable "add_udfs" {
  description = "Whether or not this module should be enabled."
  type        = string
  default     = false
}

variable "dataset_id" {
  description = "Dataset id"
  type        = string
  default     = ""
}

variable "project_id" {
  description = "Project ID that contains the dataset"
  type        = string
  default     = ""
}
