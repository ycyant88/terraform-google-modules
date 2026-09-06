variable "authorization_mode" {
  description = "The Immutable. Authorization mode of the instance. Possible values: AUTH_DISABLED IAM_AUTH"
  type        = string
  default     = "AUTH_DISABLED"
}

variable "automated_backup_config" {
  description = "The automated backup config for a instance"
  type = object({
    start_time = string
    retention  = string
  })
  default = null
}

variable "deletion_protection_enabled" {
  description = "If set to true deletion of the instance will fail"
  type        = bool
  default     = true
}

variable "enable_apis" {
  description = "Flag for enabling memcache.googleapis.com in your project"
  type        = bool
  default     = false
}

variable "engine_configs" {
  description = "User-provided engine configurations for the instance"
  type = object({
    maxmemory               = optional(string)
    maxmemory-clients       = optional(string)
    maxmemory-policy        = optional(string)
    notify-keyspace-events  = optional(string)
    slowlog-log-slower-than = optional(number)
    maxclients              = optional(number)
  })
  default = null
}

variable "engine_version" {
  description = "Engine version of the instance"
  type        = string
  default     = "VALKEY_8_0"
}

variable "gcs_source" {
  description = "GCS source for the instance. Format gs://bucket1/object1, gs://bucket2/folder2/object2"
  type        = string
  default     = null
}

variable "instance_id" {
  description = "The ID to use for the instance, which will become the final component of the instance's resource name. Must be 4-63 characters in length with lowercase letters, digits, and hyphens. Must not end with a hyphen. Must be unique within a location"
  type        = string
  default     = ""
}

variable "instance_role" {
  description = "The role of the instance in cross instance replication. Possible values are: INSTANCE_ROLE_UNSPECIFIED, NONE, PRIMARY, SECONDARY"
  type        = string
  default     = null
}

variable "labels" {
  description = "The resource labels to represent user provided metadata."
  type        = map(string)
  default     = {}
}

variable "location" {
  description = "The region where valkey cluster will be created"
  type        = string
  default     = ""
}

variable "maintenance_version" {
  description = "This field can be used to trigger self service update to indicate the desired maintenance version. The input to this field can be determined by the available_maintenance_versions field. Note: This field can only be specified when updating an existing cluster to a newer version. Downgrades are currently not supported!"
  type        = string
  default     = null
}

variable "managed_backup_source" {
  description = "Managed backup source for the instance. Format projects/{project}/locations/{location}/backupCollections/{collection}/backups/{backup}"
  type        = string
  default     = null
}

variable "mode" {
  description = "cluster or cluster-disabled. Possible values: CLUSTER, CLUSTER_DISABLED"
  type        = string
  default     = null
}

variable "network" {
  description = "Name of the consumer network where the network address of the discovery endpoint will be reserved"
  type        = string
  default     = ""
}

variable "network_project" {
  description = "project ID of the consumer network where the network address of the discovery endpoint will be reserved. Required for Shared VPC host"
  type        = string
  default     = null
}

variable "node_type" {
  description = "The nodeType for the valkey cluster. Possible values are: SHARED_CORE_NANO, HIGHMEM_MEDIUM, HIGHMEM_XLARGE, STANDARD_SMALL"
  type        = string
  default     = null
}

variable "persistence_config" {
  description = "User-provided persistence configurations for the instance"
  type = object({
    mode = optional(string)
    rdb_config = optional(object({
      rdb_snapshot_period     = optional(string)
      rdb_snapshot_start_time = optional(string)
    }), null)
    aof_config = optional(object({
      append_fsync = string
    }), null)
  })
  default = {}
}

variable "primary_instance" {
  description = "primary instance that is used as the replication source for this secondary instance. This is allowed to be set only for instances whose instance role is of type SECONDARY. Format: projects/{project}/locations/{region}/instances/{instance-id}"
  type        = string
  default     = null
}

variable "project_id" {
  description = "The ID of the project in which the resource belongs to."
  type        = string
  default     = ""
}

variable "replica_count" {
  description = "Number of replica nodes per shard. If omitted the default is 0 replicas"
  type        = number
  default     = 0
}

variable "secondary_instance" {
  description = "List of secondary instances that are replicating from this primary instance. This is allowed to be set only for instances whose instance role is of type PRIMARY. Format: projects/{project}/locations/{region}/instances/{instance-id}"
  type        = list(string)
  default     = []
}

variable "service_connection_policies" {
  description = "The Service Connection Policies to create. Required to create service connection policy. Not needed if service connection policy already exist"
  type = map(object({
    subnet_names = list(string)
    description  = optional(string)
    limit        = optional(number)
    labels       = optional(map(string), {})
  }))
  default = {}
}

variable "shard_count" {
  description = "Number of shards for the instance"
  type        = number
  default     = 3
}

variable "transit_encryption_mode" {
  description = "Immutable. In-transit encryption mode of the instance. Possible values: TRANSIT_ENCRYPTION_DISABLED SERVER_AUTHENTICATION"
  type        = string
  default     = "TRANSIT_ENCRYPTION_DISABLED"
}

variable "weekly_maintenance_window" {
  description = "Maintenance window that is applied to resources covered by this policy. Minimum 1. For the current version, the maximum number of weekly_window is expected to be one. Possible values for day_of_the_week are: DAY_OF_WEEK_UNSPECIFIED, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY"
  type = list(object({
    day_of_week        = string
    start_time_hour    = optional(string)
    start_time_minutes = optional(string)
    start_time_seconds = optional(string)
    start_time_nanos   = optional(string)
  }))
  default = null
}

variable "zone_distribution_config_mode" {
  description = "The mode for zone distribution for Memorystore valkey cluster (Immutable). If not provided, MULTI_ZONE will be used as default value. Possible values are: MULTI_ZONE, SINGLE_ZONE"
  type        = string
  default     = "MULTI_ZONE"
}

variable "zone_distribution_config_zone" {
  description = "The zone for single zone Memorystore valkey cluster (Immutable)"
  type        = string
  default     = null
}
