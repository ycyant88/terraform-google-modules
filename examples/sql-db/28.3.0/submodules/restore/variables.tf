variable "import_databases" {
  description = "The list of databases that should be imported - if is an empty set all databases will be imported"
  type        = set(string)
  default     = []
}

variable "import_uri" {
  description = "The bucket and path uri of GCS backup file for importing"
  type        = string
  default     = ""
}

variable "project_id" {
  description = "The project ID"
  type        = string
  default     = ""
}

variable "region" {
  description = "The region to run the workflow"
  type        = string
  default     = "us-central1"
}

variable "service_account" {
  description = "The service account to use for running the workflow and triggering the workflow by Cloud Scheduler - If empty or null a service account will be created. If you have provided a service account you need to grant the Cloud SQL Admin and the Workflows Invoker role to that"
  type        = string
  default     = null
}

variable "sql_instance" {
  description = "The name of the SQL instance to backup"
  type        = string
  default     = ""
}
