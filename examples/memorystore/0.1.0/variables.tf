variable "alternative_location_id" {
  description = "The alternative zone where the instance will be provisioned."
  type        = string
  default     = ""
}

variable "authorized_network" {
  description = "The name of the memorystore authorized network."
  type        = string
  default     = ""
}

variable "display_name" {
  description = "An arbitrary and optional user-provided name for the instance."
  type        = string
  default     = ""
}

variable "enable_apis" {
  description = "Enable required APIs for Cloud Memorystore."
  type        = string
  default     = "true"
}

variable "labels" {
  description = "The resource labels to represent user provided metadata."
  type        = map(any)
  default     = {}
}

variable "location_id" {
  description = "The zone where the instance will be provisioned."
  type        = string
  default     = ""
}

variable "memory_size_gb" {
  description = "Redis memory size in GiB."
  type        = string
  default     = ""
}

variable "name" {
  description = "The ID of the instance or a fully qualified identifier for the instance."
  type        = string
  default     = ""
}

variable "project" {
  description = "The ID of the project in which the resource belongs to."
  type        = string
  default     = ""
}

variable "redis_version" {
  description = "The version of Redis software."
  type        = string
  default     = ""
}

variable "region" {
  description = "The GCP region to use."
  type        = string
  default     = ""
}

variable "reserved_ip_range" {
  description = "The CIDR range of internal addresses that are reserved for this instance."
  type        = string
  default     = ""
}

variable "tier" {
  description = "The service tier of the instance."
  type        = string
  default     = "STANDARD_HA"
}
