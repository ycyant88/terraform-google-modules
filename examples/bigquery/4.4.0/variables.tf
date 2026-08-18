variable "access" {
  description = "An array of objects that define dataset access for one or more entities."
  type        = any
  default     = [{ "role" : "roles/bigquery.dataOwner", "special_group" : "projectOwners" }]
}

variable "dataset_id" {
  description = "Unique ID for the dataset being provisioned."
  type        = string
  default     = ""
}

variable "dataset_labels" {
  description = "Key value pairs in a map for dataset labels"
  type        = map(string)
  default     = {}
}

variable "dataset_name" {
  description = "Friendly name for the dataset being provisioned."
  type        = string
  default     = ""
}

variable "default_table_expiration_ms" {
  description = "TTL of tables using the dataset in MS"
  type        = number
  default     = ""
}

variable "delete_contents_on_destroy" {
  description = "(Optional) If set to true, delete all the tables in the dataset when destroying the resource; otherwise, destroying the resource will fail if tables are present."
  type        = bool
  default     = ""
}

variable "description" {
  description = "Dataset description."
  type        = string
  default     = ""
}

variable "encryption_key" {
  description = "Default encryption key to apply to the dataset. Defaults to null (Google-managed)."
  type        = string
  default     = ""
}

variable "location" {
  description = "The regional location for the dataset only US and EU are allowed in module"
  type        = string
  default     = "US"
}

variable "project_id" {
  description = "Project where the dataset and table are created"
  type        = string
  default     = ""
}

variable "tables" {
  description = "A list of objects which include table_id, schema, clustering, time_partitioning, expiration_time and labels."
  type = list(object({
    table_id   = string,
    schema     = string,
    clustering = list(string),
    time_partitioning = object({
      expiration_ms            = string,
      field                    = string,
      type                     = string,
      require_partition_filter = bool,
    }),
    expiration_time = string,
    labels          = map(string),
  }))
  default = []
}

variable "views" {
  description = "A list of objects which include table_id, which is view id, and view query"
  type = list(object({
    view_id        = string,
    query          = string,
    use_legacy_sql = bool,
    labels         = map(string),
  }))
  default = []
}
