variable "activation_policy" {
  description = "The activation policy for the master instance.Can be either ALWAYS, NEVER or ON_DEMAND."
  type        = string
  default     = "ALWAYS"
}

variable "additional_databases" {
  description = "A list of databases to be created in your cluster"
  type        = list(any)
  default     = []
}

variable "additional_users" {
  description = "A list of users to be created in your cluster"
  type        = list(any)
  default     = []
}

variable "authorized_gae_applications" {
  description = "The authorized gae applications for the Cloud SQL instances"
  type        = list(any)
  default     = []
}

variable "availability_type" {
  description = "The availability type for the master instance.This is only used to set up high availability for the PostgreSQL instance. Can be either ZONAL or REGIONAL."
  type        = string
  default     = "ZONAL"
}

variable "backup_configuration" {
  description = "The backup configuration block of the Cloud SQL resources\nThis argument will be passed through the master instance directrly.\n\nSee [more details](https://www.terraform.io/docs/providers/google/r/sql_database_instance.html).\n"
  type        = map(any)
  default     = {}
}

variable "create_timeout" {
  description = "The optional timout that is applied to limit long database creates."
  type        = string
  default     = "10m"
}

variable "database_flags" {
  description = "The database flags for the master instance. See [more details](https://cloud.google.com/sql/docs/mysql/flags)"
  type        = list(any)
  default     = []
}

variable "database_version" {
  description = "The database version to use"
  type        = string
  default     = ""
}

variable "db_charset" {
  description = "The charset for the default database"
  type        = string
  default     = ""
}

variable "db_collation" {
  description = "The collation for the default database. Example: 'en_US.UTF8'"
  type        = string
  default     = ""
}

variable "db_name" {
  description = "The name of the default database to create"
  type        = string
  default     = "default"
}

variable "delete_timeout" {
  description = "The optional timout that is applied to limit long database deletes."
  type        = string
  default     = "10m"
}

variable "disk_autoresize" {
  description = "Configuration to increase storage size."
  type        = bool
  default     = true
}

variable "disk_size" {
  description = "The disk size for the master instance."
  type        = number
  default     = 10
}

variable "disk_type" {
  description = "The disk type for the master instance."
  type        = string
  default     = "PD_SSD"
}

variable "ip_configuration" {
  description = "The ip configuration for the master instances."
  type        = map(any)
  default     = { "ipv4_enabled" : "true" }
}

variable "maintenance_window_day" {
  description = "The day of week (1-7) for the master instance maintenance."
  type        = number
  default     = 1
}

variable "maintenance_window_hour" {
  description = "The hour of day (0-23) maintenance window for the master instance maintenance."
  type        = number
  default     = 23
}

variable "maintenance_window_update_track" {
  description = "The update track of maintenance window for the master instance maintenance.Can be either canary or stable."
  type        = string
  default     = "canary"
}

variable "name" {
  description = "The name of the Cloud SQL resources"
  type        = string
  default     = ""
}

variable "pricing_plan" {
  description = "The pricing plan for the master instance."
  type        = string
  default     = "PER_USE"
}

variable "project_id" {
  description = "The project ID to manage the Cloud SQL resources"
  type        = string
  default     = ""
}

variable "read_replica_activation_policy" {
  description = "The activation policy for the read replica instances.Can be either ALWAYS, NEVER or ON_DEMAND."
  type        = string
  default     = "ALWAYS"
}

variable "read_replica_availability_type" {
  description = "The availability type for the read replica instances.This is only used to set up high availability for the PostgreSQL instances. Can be either ZONAL or REGIONAL."
  type        = string
  default     = "ZONAL"
}

variable "read_replica_configuration" {
  description = "The replica configuration for use in read replica"
  type        = map(any)
  default     = {}
}

variable "read_replica_crash_safe_replication" {
  description = "The crash safe replication is to indicates when crash-safe replication flags are enabled."
  type        = bool
  default     = true
}

variable "read_replica_database_flags" {
  description = "The database flags for the read replica instances. See [more details](https://cloud.google.com/sql/docs/mysql/flags)"
  type        = list(any)
  default     = []
}

variable "read_replica_disk_autoresize" {
  description = "Configuration to increase storage size."
  type        = bool
  default     = true
}

variable "read_replica_disk_size" {
  description = "The disk size for the read replica instances."
  type        = number
  default     = 10
}

variable "read_replica_disk_type" {
  description = "The disk type for the read replica instances."
  type        = string
  default     = "PD_SSD"
}

variable "read_replica_ip_configuration" {
  description = "The ip configuration for the read instances."
  type        = map(any)
  default     = {}
}

variable "read_replica_maintenance_window_day" {
  description = "The day of week (1-7) for the read replica instances maintenance."
  type        = number
  default     = 1
}

variable "read_replica_maintenance_window_hour" {
  description = "The hour of day (0-23) maintenance window for the read replica instances maintenance."
  type        = number
  default     = 23
}

variable "read_replica_maintenance_window_update_track" {
  description = "The update track of maintenance window for the read replica instances maintenance.Can be either canary or stable."
  type        = string
  default     = "canary"
}

variable "read_replica_pricing_plan" {
  description = "The pricing plan for the read replica instances."
  type        = string
  default     = "PER_USE"
}

variable "read_replica_replication_type" {
  description = "The replication type for read replica instances. Can be one of ASYNCHRONOUS or SYNCHRONOUS."
  type        = string
  default     = "SYNCHRONOUS"
}

variable "read_replica_size" {
  description = "The size of read replicas"
  type        = number
  default     = 0
}

variable "read_replica_tier" {
  description = "The tier for the read replica instances."
  type        = string
  default     = ""
}

variable "read_replica_user_labels" {
  description = "The key/value labels for the read replica instances."
  type        = map(any)
  default     = {}
}

variable "read_replica_zones" {
  description = "The zones for the read replica instancess, it should be something like: a,b,c. Given zones are used rotationally for creating read replicas."
  type        = string
  default     = ""
}

variable "region" {
  description = "The region of the Cloud SQL resources"
  type        = string
  default     = "us-central1"
}

variable "tier" {
  description = "The tier for the master instance."
  type        = string
  default     = "db-f1-micro"
}

variable "update_timeout" {
  description = "The optional timout that is applied to limit long database updates."
  type        = string
  default     = "10m"
}

variable "user_labels" {
  description = "The key/value labels for the master instances."
  type        = map(any)
  default     = {}
}

variable "user_name" {
  description = "The name of the default user"
  type        = string
  default     = "default"
}

variable "user_password" {
  description = "The password for the default user. If not set, a random one will be generated and available in the generated_user_password output variable."
  type        = string
  default     = ""
}

variable "zone" {
  description = "The zone for the master instance, it should be something like: a, c."
  type        = string
  default     = ""
}
