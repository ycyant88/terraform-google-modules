variable "airflow_config_overrides" {
  description = "Airflow configuration properties to override. Property keys contain the section and property names, separated by a hyphen, for example \"core-dags_are_paused_at_creation\"."
  type        = map(string)
  default     = {}
}

variable "cloud_composer_connection_subnetwork" {
  description = "When specified, the environment will use Private Service Connect instead of VPC peerings to connect to Cloud SQL in the Tenant Project"
  type        = string
  default     = null
}

variable "cloud_composer_network_ipv4_cidr_block" {
  description = "The CIDR block from which IP range in tenant project will be reserved."
  type        = string
  default     = null
}

variable "cloud_sql_ipv4_cidr" {
  description = "The CIDR block from which IP range in tenant project will be reserved for Cloud SQL."
  type        = string
  default     = null
}

variable "composer_env_name" {
  description = "Name of Cloud Composer Environment"
  type        = string
  default     = ""
}

variable "composer_service_account" {
  description = "Service Account for running Cloud Composer."
  type        = string
  default     = null
}

variable "enable_private_endpoint" {
  description = "Configure public access to the cluster endpoint."
  type        = bool
  default     = false
}

variable "env_variables" {
  description = "Variables of the airflow environment."
  type        = map(string)
  default     = {}
}

variable "environment_size" {
  description = "The environment size controls the performance parameters of the managed Cloud Composer infrastructure that includes the Airflow database. Values for environment size are: ENVIRONMENT_SIZE_SMALL, ENVIRONMENT_SIZE_MEDIUM, and ENVIRONMENT_SIZE_LARGE."
  type        = string
  default     = "ENVIRONMENT_SIZE_MEDIUM"
}

variable "grant_sa_agent_permission" {
  description = "Cloud Composer relies on Workload Identity as Google API authentication mechanism for Airflow. "
  type        = bool
  default     = true
}

variable "image_version" {
  description = "The version of the aiflow running in the cloud composer environment."
  type        = string
  default     = "composer-2.0.2-airflow-2.1.4"
}

variable "labels" {
  description = "The resource labels (a map of key/value pairs) to be applied to the Cloud Composer."
  type        = map(string)
  default     = {}
}

variable "maintenance_end_time" {
  description = "Time window specified for recurring maintenance operations in RFC3339 format"
  type        = string
  default     = null
}

variable "maintenance_recurrence" {
  description = "Frequency of the recurring maintenance window in RFC5545 format."
  type        = string
  default     = null
}

variable "maintenance_start_time" {
  description = "Time window specified for daily or recurring maintenance operations in RFC3339 format"
  type        = string
  default     = "05:00"
}

variable "master_authorized_networks" {
  description = "List of master authorized networks. If none are provided, disallow external access (except the cluster node IPs, which GKE automatically whitelists)."
  type = list(object({
    cidr_block   = string
    display_name = string
  }))
  default = []
}

variable "master_ipv4_cidr" {
  description = "The CIDR block from which IP range in tenant project will be reserved for the master."
  type        = string
  default     = null
}

variable "network" {
  description = "The VPC network to host the composer cluster."
  type        = string
  default     = ""
}

variable "network_project_id" {
  description = "The project ID of the shared VPC's host (for shared vpc support)"
  type        = string
  default     = ""
}

variable "pod_ip_allocation_range_name" {
  description = "The name of the cluster's secondary range used to allocate IP addresses to pods."
  type        = string
  default     = null
}

variable "project_id" {
  description = "Project ID where Cloud Composer Environment is created."
  type        = string
  default     = ""
}

variable "pypi_packages" {
  description = " Custom Python Package Index (PyPI) packages to be installed in the environment. Keys refer to the lowercase package name (e.g. \"numpy\")."
  type        = map(string)
  default     = {}
}

variable "region" {
  description = "Region where the Cloud Composer Environment is created."
  type        = string
  default     = "us-central1"
}

variable "scheduler" {
  description = "Configuration for resources used by Airflow schedulers."
  type = object({
    cpu        = string
    memory_gb  = number
    storage_gb = number
    count      = number
  })
  default = { "count" : 2, "cpu" : 2, "memory_gb" : 7.5, "storage_gb" : 5 }
}

variable "service_ip_allocation_range_name" {
  description = "The name of the services' secondary range used to allocate IP addresses to the cluster."
  type        = string
  default     = null
}

variable "subnetwork" {
  description = "The subnetwork to host the composer cluster."
  type        = string
  default     = ""
}

variable "subnetwork_region" {
  description = "The subnetwork region of the shared VPC's host (for shared vpc support)"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls."
  type        = set(string)
  default     = []
}

variable "use_private_environment" {
  description = "Enable private environment."
  type        = bool
  default     = false
}

variable "web_server" {
  description = "Configuration for resources used by Airflow web server."
  type = object({
    cpu        = string
    memory_gb  = number
    storage_gb = number
  })
  default = { "cpu" : 2, "memory_gb" : 7.5, "storage_gb" : 5 }
}

variable "web_server_allowed_ip_ranges" {
  description = "The network-level access control policy for the Airflow web server. If unspecified, no network-level access restrictions will be applied."
  type = list(object({
    value       = string,
    description = string
  }))
  default = null
}

variable "worker" {
  description = "Configuration for resources used by Airflow workers."
  type = object({
    cpu        = string
    memory_gb  = number
    storage_gb = number
    min_count  = number
    max_count  = number
  })
  default = { "cpu" : 2, "max_count" : 6, "memory_gb" : 7.5, "min_count" : 2, "storage_gb" : 5 }
}
