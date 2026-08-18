variable "authorization_mode" {
  description = "The Immutable. Authorization mode of the instance. Possible values: AUTH_DISABLED IAM_AUTH"
  type        = string
  default     = "AUTH_DISABLED"
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

variable "instance_id" {
  description = "The ID to use for the instance, which will become the final component of the instance's resource name. Must be 4-63 characters in length with lowercase letters, digits, and hyphens. Must not end with a hyphen. Must be unique within a location"
  type        = string
  default     = ""
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
