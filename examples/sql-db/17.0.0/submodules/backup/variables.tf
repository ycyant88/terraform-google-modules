variable "backup_retention_time" {
  description = "The number of days backups should be kept"
  type        = number
  default     = 30
}

variable "backup_schedule" {
  description = "The cron schedule to execute the internal backup"
  type        = string
  default     = "45 2 * * *"
}

variable "compress_export" {
  description = "Whether or not to compress the export when storing in the bucket; Only valid for MySQL and PostgreSQL"
  type        = bool
  default     = true
}

variable "connector_params_timeout" {
  description = "The end-to-end duration the connector call is allowed to run for before throwing a timeout exception. The default value is 1800 and this should be the maximum for connector methods that are not long-running operations. Otherwise, for long-running operations, the maximum timeout for a connector call is 31536000 seconds (one year)."
  type        = number
  default     = 1800
}

variable "enable_connector_params" {
  description = "Whether to enable connector-specific parameters for Google Workflow SQL Export."
  type        = bool
  default     = false
}

variable "enable_export_backup" {
  description = "Weather to create exports to GCS Buckets with this module"
  type        = bool
  default     = true
}

variable "enable_internal_backup" {
  description = "Wether to create internal backups with this module"
  type        = bool
  default     = true
}

variable "export_databases" {
  description = "The list of databases that should be exported - if is an empty set all databases will be exported"
  type        = set(string)
  default     = []
}

variable "export_schedule" {
  description = "The cron schedule to execute the export to GCS"
  type        = string
  default     = "15 3 * * *"
}

variable "export_uri" {
  description = "The bucket and path uri for exporting to GCS"
  type        = string
  default     = ""
}

variable "log_db_name_to_export" {
  description = "Whether or not to log database name in the export workflow"
  type        = bool
  default     = false
}

variable "project_id" {
  description = "The project ID"
  type        = string
  default     = ""
}

variable "region" {
  description = "The region where to run the workflow"
  type        = string
  default     = "us-central1"
}

variable "scheduler_timezone" {
  description = "The Timezone in which the Scheduler Jobs are triggered"
  type        = string
  default     = "Etc/GMT"
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

variable "sql_instance_replica" {
  description = "The name of the SQL instance replica to export"
  type        = string
  default     = null
}

variable "unique_suffix" {
  description = "Unique suffix to add to scheduler jobs and workflows names."
  type        = string
  default     = ""
}

variable "use_sql_instance_replica_in_exporter" {
  description = "Whether or not to use replica instance on exporter workflow."
  type        = bool
  default     = false
}
