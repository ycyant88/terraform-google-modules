variable "activation_policy" {
  description = "The activation policy for the Cloud SQL instance.Can be either ALWAYS, NEVER or ON_DEMAND."
  type        = string
  default     = "ALWAYS"
}

variable "additional_databases" {
  description = "A list of databases to be created in your cluster"
  type = list(object({
    name      = string
    charset   = string
    collation = string
  }))
  default = []
}

variable "additional_users" {
  description = "A list of users to be created in your cluster. A random password would be set for the user if the random_password variable is set."
  type = list(object({
    name            = string
    password        = string
    random_password = bool
  }))
  default = []
}

variable "availability_type" {
  description = "The availability type for the Cloud SQL instance.This is only used to set up high availability for the PostgreSQL instance. Can be either ZONAL or REGIONAL."
  type        = string
  default     = "ZONAL"
}

variable "backup_configuration" {
  description = "The backup_configuration settings subblock for the database setings"
  type = object({
    enabled                        = optional(bool, false)
    start_time                     = optional(string)
    location                       = optional(string)
    point_in_time_recovery_enabled = optional(bool, false)
    transaction_log_retention_days = optional(string)
    retained_backups               = optional(number)
    retention_unit                 = optional(string)
  })
  default = {}
}

variable "connector_enforcement" {
  description = "Enforce that clients use the connector library"
  type        = bool
  default     = false
}

variable "create_timeout" {
  description = "The optional timout that is applied to limit long database creates."
  type        = string
  default     = "30m"
}

variable "data_cache_enabled" {
  description = "Whether data cache is enabled for the instance. Defaults to false. Feature is only available for ENTERPRISE_PLUS tier and supported database_versions"
  type        = bool
  default     = false
}

variable "database_deletion_policy" {
  description = "The deletion policy for the database. Setting ABANDON allows the resource to be abandoned rather than deleted. This is useful for Postgres, where databases cannot be deleted from the API if there are users other than cloudsqlsuperuser with access. Possible values are: \"ABANDON\"."
  type        = string
  default     = null
}

variable "database_flags" {
  description = "The database flags for the Cloud SQL instance. See [more details](https://cloud.google.com/sql/docs/postgres/flags)"
  type = list(object({
    name  = string
    value = string
  }))
  default = []
}

variable "database_integration_roles" {
  description = "The roles required by default database instance service account for integration with GCP services"
  type        = list(string)
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
  default     = "30m"
}

variable "deletion_protection" {
  description = "Used to block Terraform from deleting a SQL Instance."
  type        = bool
  default     = true
}

variable "deletion_protection_enabled" {
  description = "Enables protection of an Cloud SQL instance from accidental deletion across all surfaces (API, gcloud, Cloud Console and Terraform)."
  type        = bool
  default     = false
}

variable "deny_maintenance_period" {
  description = "The Deny Maintenance Period fields to prevent automatic maintenance from occurring during a 90-day time period. List accepts only one value. See [more details](https://cloud.google.com/sql/docs/postgres/maintenance)"
  type = list(object({
    end_date   = string
    start_date = string
    time       = string
  }))
  default = []
}

variable "disk_autoresize" {
  description = "Configuration to increase storage size."
  type        = bool
  default     = true
}

variable "disk_autoresize_limit" {
  description = "The maximum size to which storage can be auto increased."
  type        = number
  default     = 0
}

variable "disk_size" {
  description = "The disk size (in GB) for the Cloud SQL instance."
  type        = number
  default     = 10
}

variable "disk_type" {
  description = "The disk type for the Cloud SQL instance."
  type        = string
  default     = "PD_SSD"
}

variable "edition" {
  description = "The edition of the Cloud SQL instance, can be ENTERPRISE or ENTERPRISE_PLUS."
  type        = string
  default     = null
}

variable "enable_default_db" {
  description = "Enable or disable the creation of the default database"
  type        = bool
  default     = true
}

variable "enable_default_user" {
  description = "Enable or disable the creation of the default user"
  type        = bool
  default     = true
}

variable "enable_google_ml_integration" {
  description = "Enable database ML integration"
  type        = bool
  default     = false
}

variable "enable_random_password_special" {
  description = "Enable special characters in generated random passwords."
  type        = bool
  default     = false
}

variable "encryption_key_name" {
  description = "The full path to the encryption key used for the CMEK disk encryption"
  type        = string
  default     = null
}

variable "follow_gae_application" {
  description = "A Google App Engine application whose zone to remain in. Must be in the same region as this instance."
  type        = string
  default     = null
}

variable "iam_users" {
  description = "A list of IAM users to be created in your CloudSQL instance. iam.users.type can be CLOUD_IAM_USER, CLOUD_IAM_SERVICE_ACCOUNT, CLOUD_IAM_GROUP and is required for type CLOUD_IAM_GROUP (IAM groups)"
  type = list(object({
    id    = string,
    email = string,
    type  = optional(string)
  }))
  default = []
}

variable "insights_config" {
  description = "The insights_config settings for the database."
  type = object({
    query_plans_per_minute  = optional(number, 5)
    query_string_length     = optional(number, 1024)
    record_application_tags = optional(bool, false)
    record_client_address   = optional(bool, false)
  })
  default = null
}

variable "instance_type" {
  description = "The type of the instance. The supported values are SQL_INSTANCE_TYPE_UNSPECIFIED, CLOUD_SQL_INSTANCE, ON_PREMISES_INSTANCE and READ_REPLICA_INSTANCE. Set to READ_REPLICA_INSTANCE if master_instance_name value is provided"
  type        = string
  default     = "CLOUD_SQL_INSTANCE"
}

variable "ip_configuration" {
  description = "The ip configuration for the Cloud SQL instances."
  type = object({
    authorized_networks                           = optional(list(map(string)), [])
    ipv4_enabled                                  = optional(bool, true)
    private_network                               = optional(string)
    ssl_mode                                      = optional(string)
    allocated_ip_range                            = optional(string)
    enable_private_path_for_google_cloud_services = optional(bool, false)
    psc_enabled                                   = optional(bool, false)
    psc_allowed_consumer_projects                 = optional(list(string), [])
  })
  default = {}
}

variable "maintenance_window_day" {
  description = "The day of week (1-7) for the Cloud SQL instance maintenance."
  type        = number
  default     = 1
}

variable "maintenance_window_hour" {
  description = "The hour of day (0-23) maintenance window for the Cloud SQL instance maintenance."
  type        = number
  default     = 23
}

variable "maintenance_window_update_track" {
  description = "The update track of maintenance window for the Cloud SQL instance maintenance.Can be either canary or stable."
  type        = string
  default     = "canary"
}

variable "master_instance_name" {
  description = "Name of the master instance if this is a failover replica. Required for creating failover replica instance. Not needed for master instance. When removed, next terraform apply will promote this failover failover replica instance as master instance"
  type        = string
  default     = null
}

variable "module_depends_on" {
  description = "List of modules or resources this module depends on."
  type        = list(any)
  default     = []
}

variable "name" {
  description = "The name of the Cloud SQL instance"
  type        = string
  default     = ""
}

variable "password_validation_policy_config" {
  description = "The password validation policy settings for the database instance."
  type = object({
    min_length                  = optional(number)
    complexity                  = optional(string)
    reuse_interval              = optional(number)
    disallow_username_substring = optional(bool)
    password_change_interval    = optional(string)
  })
  default = null
}

variable "pricing_plan" {
  description = "The pricing plan for the Cloud SQL instance."
  type        = string
  default     = "PER_USE"
}

variable "project_id" {
  description = "The project ID to manage the Cloud SQL resources"
  type        = string
  default     = ""
}

variable "random_instance_name" {
  description = "Sets random suffix at the end of the Cloud SQL resource name"
  type        = bool
  default     = false
}

variable "read_replica_deletion_protection" {
  description = "Used to block Terraform from deleting replica SQL Instances."
  type        = bool
  default     = false
}

variable "read_replica_deletion_protection_enabled" {
  description = "Enables protection of replica instance from accidental deletion across all surfaces (API, gcloud, Cloud Console and Terraform)."
  type        = bool
  default     = false
}

variable "read_replica_name_suffix" {
  description = "The optional suffix to add to the read instance name"
  type        = string
  default     = ""
}

variable "read_replicas" {
  description = "List of read replicas to create. Encryption key is required for replica in different region. For replica in same region as master set encryption_key_name = null"
  type = list(object({
    name                  = string
    name_override         = optional(string)
    tier                  = optional(string)
    edition               = optional(string)
    availability_type     = optional(string)
    zone                  = optional(string)
    disk_type             = optional(string)
    disk_autoresize       = optional(bool)
    disk_autoresize_limit = optional(number)
    disk_size             = optional(string)
    user_labels           = map(string)
    database_flags = optional(list(object({
      name  = string
      value = string
    })), [])
    insights_config = optional(object({
      query_plans_per_minute  = optional(number, 5)
      query_string_length     = optional(number, 1024)
      record_application_tags = optional(bool, false)
      record_client_address   = optional(bool, false)
    }), null)
    ip_configuration = object({
      authorized_networks                           = optional(list(map(string)), [])
      ipv4_enabled                                  = optional(bool)
      private_network                               = optional(string, )
      ssl_mode                                      = optional(string)
      allocated_ip_range                            = optional(string)
      enable_private_path_for_google_cloud_services = optional(bool, false)
      psc_enabled                                   = optional(bool, false)
      psc_allowed_consumer_projects                 = optional(list(string), [])
    })
    encryption_key_name = optional(string)
    data_cache_enabled  = optional(bool)
  }))
  default = []
}

variable "region" {
  description = "The region of the Cloud SQL resources"
  type        = string
  default     = "us-central1"
}

variable "root_password" {
  description = "Initial root password during creation"
  type        = string
  default     = null
}

variable "secondary_zone" {
  description = "The preferred zone for the replica instance, it should be something like: us-central1-a, us-east1-c."
  type        = string
  default     = null
}

variable "tier" {
  description = "The tier for the Cloud SQL instance."
  type        = string
  default     = "db-f1-micro"
}

variable "update_timeout" {
  description = "The optional timout that is applied to limit long database updates."
  type        = string
  default     = "30m"
}

variable "user_deletion_policy" {
  description = "The deletion policy for the user. Setting ABANDON allows the resource to be abandoned rather than deleted. This is useful for Postgres, where users cannot be deleted from the API if they have been granted SQL roles. Possible values are: \"ABANDON\"."
  type        = string
  default     = null
}

variable "user_labels" {
  description = "The key/value labels for the Cloud SQL instances."
  type        = map(string)
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
  description = "The zone for the Cloud SQL instance, it should be something like: us-central1-a, us-east1-c."
  type        = string
  default     = null
}
