variable "authorized_views" {
  description = "An array of views to give authorize for the dataset"
  type = list(object({
    dataset_id = string,
    project_id = string,
    table_id   = string # this is the view id, but we keep table_id to stay consistent as the resource
  }))
  default = ""
}

variable "dataset_id" {
  description = "Unique ID for the dataset being provisioned."
  type        = string
  default     = ""
}

variable "project_id" {
  description = "Project where the dataset and table are created"
  type        = string
  default     = ""
}

variable "roles" {
  description = "An array of objects that define dataset access for one or more entities."
  type        = any
  default     = []
}
