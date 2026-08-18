variable "dataset_create" {
  description = "Whether to create the BigQuery dataset"
  type        = bool
  default     = true
}

variable "dataset_default_table_expiration_ms" {
  description = "The default lifetime of the slo table in the dataset, in milliseconds. Default is never (Recommended)"
  type        = number
  default     = -1
}

variable "exporters" {
  description = "SLO export destinations config"
  type        = any
  default     = ""
}

variable "extra_files" {
  description = "Extra files to add to the Google Cloud Function code"
  type = list(object({
    content  = string,
    filename = string
  }))
  default = []
}

variable "function_bucket_name" {
  description = "Name of the bucket to create to store the Cloud Function code"
  type        = string
  default     = "slo-pipeline"
}

variable "function_environment_variables" {
  description = "Cloud Function environment variables"
  type        = map(any)
  default     = {}
}

variable "function_memory" {
  description = "Memory in MB for the Cloud Function (increases with no. of SLOs)"
  type        = string
  default     = 128
}

variable "function_name" {
  description = "Cloud Function name"
  type        = string
  default     = "slo-pipeline"
}

variable "function_source_directory" {
  description = "The contents of this directory will be archived and used as the function source. (defaults to standard SLO generator code)"
  type        = string
  default     = ""
}

variable "function_timeout" {
  description = "Timeout (in seconds)"
  type        = string
  default     = "90"
}

variable "grant_iam_roles" {
  description = "Grant IAM roles to created service accounts"
  type        = string
  default     = true
}

variable "labels" {
  description = "Labels to apply to all resources created"
  type        = map(any)
  default     = {}
}

variable "project_id" {
  description = "Project id to create SLO infrastructure"
  type        = string
  default     = ""
}

variable "pubsub_topic_name" {
  description = "Pub/Sub topic name"
  type        = string
  default     = "slo-export-topic"
}

variable "region" {
  description = "Region for the App Engine app"
  type        = string
  default     = "us-east1"
}

variable "service_account_email" {
  description = "Service account email (optional)"
  type        = string
  default     = ""
}

variable "service_account_name" {
  description = "Name of the service account to create"
  type        = string
  default     = "slo-pipeline"
}

variable "slo_generator_version" {
  description = "SLO generator library version"
  type        = string
  default     = "1.4.0"
}

variable "storage_bucket_class" {
  description = "The Storage Class of the new bucket. Supported values include: STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE"
  type        = string
  default     = "STANDARD"
}

variable "storage_bucket_location" {
  description = "The GCS location"
  type        = string
  default     = "US"
}

variable "use_custom_service_account" {
  description = "Use a custom service account (pass service_account_email if true)"
  type        = bool
  default     = false
}

variable "vpc_connector" {
  description = "VPC Connector. The format of this field is projects/*/locations/*/connectors/*."
  type        = string
  default     = ""
}

variable "vpc_connector_egress_settings" {
  description = "VPC Connector Egress Settings. Allowed values are ALL_TRAFFIC and PRIVATE_RANGES_ONLY."
  type        = string
  default     = ""
}
