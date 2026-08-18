variable "bigquery" {
  description = ""
  type = 
  default = {}
}

variable "billing_id" {
  description = "The billing id (required if billing-level sink)"
  type = 
  default = ""
}

variable "filter" {
  description = "The log filter"
  type = 
  default = ""
}

variable "folder" {
  description = "The folder name (required if folder-level sink)"
  type = 
  default = ""
}

variable "include_children" {
  description = "Include children folder or projects in the sink"
  type = 
  default = true
}

variable "name" {
  description = "The logsink name"
  type = 
  default = ""
}

variable "org_id" {
  description = "The organization id (required if org-level sink)"
  type = 
  default = ""
}

variable "project" {
  description = "The project name (required if project-level sink)"
  type = 
  default = ""
}

variable "pubsub" {
  description = ""
  type = 
  default = {}
}

variable "storage" {
  description = ""
  type = 
  default = {}
}

variable "unique_writer_identity" {
  description = "Whether or not to create a unique identity associated with this sink. If false (default), then the writer_identity used is serviceAccount:cloud-logs@system.gserviceaccount.com."
  type = 
  default = true
}
