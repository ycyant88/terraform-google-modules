variable "airflow_config_overrides" {
  description = "Airflow configuration properties to override. Property keys contain the section and property names, separated by a hyphen, for example \"core-dags_are_paused_at_creation\"."
  type        = map(string)
  default     = {}
}

variable "cloud_sql_ipv4_cidr" {
  description = "The CIDR block from which IP range in tenant project will be reserved for Cloud SQL."
  type        = string
  default     = null
}

variable "composer_env_name" {
  description = "Name of Cloud Composer Environment"
  type        = string
  default     = null
}

variable "composer_service_account" {
  description = "Service Account for running Cloud Composer."
  type        = string
  default     = null
}

variable "disk_size" {
  description = "The disk size for nodes."
  type        = string
  default     = "100"
}

variable "enable_ip_masq_agent" {
  description = "Deploys 'ip-masq-agent' daemon set in the GKE cluster and defines nonMasqueradeCIDRs equals to pod IP range so IP masquerading is used for all destination addresses, except between pods traffic."
  type        = bool
  default     = false
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

variable "image_version" {
  description = "The version of the aiflow running in the cloud composer environment."
  type        = string
  default     = null
}

variable "kms_key_name" {
  description = "Customer-managed Encryption Key fully qualified resource name, i.e. projects/project-id/locations/location/keyRings/keyring/cryptoKeys/key."
  type        = string
  default     = null
}

variable "labels" {
  description = "The resource labels (a map of key/value pairs) to be applied to the Cloud Composer."
  type        = map(string)
  default     = {}
}

variable "machine_type" {
  description = "Machine type of Cloud Composer nodes."
  type        = string
  default     = "n1-standard-8"
}

variable "master_ipv4_cidr" {
  description = "The CIDR block from which IP range in tenant project will be reserved for the master."
  type        = string
  default     = null
}

variable "network" {
  description = "The VPC network to host the composer cluster."
  type        = string
  default     = null
}

variable "network_project_id" {
  description = "The project ID of the shared VPC's host (for shared vpc support)"
  type        = string
  default     = ""
}

variable "node_count" {
  description = "Number of worker nodes in Cloud Composer Environment."
  type        = number
  default     = 3
}

variable "oauth_scopes" {
  description = "Google API scopes to be made available on all node."
  type        = set(string)
  default     = ["https://www.googleapis.com/auth/cloud-platform"]
}

variable "pod_ip_allocation_range_name" {
  description = "The name of the cluster's secondary range used to allocate IP addresses to pods."
  type        = string
  default     = null
}

variable "project_id" {
  description = "Project ID where Cloud Composer Environment is created."
  type        = string
  default     = null
}

variable "pypi_packages" {
  description = " Custom Python Package Index (PyPI) packages to be installed in the environment. Keys refer to the lowercase package name (e.g. \"numpy\")."
  type        = map(string)
  default     = {}
}

variable "python_version" {
  description = "The default version of Python used to run the Airflow scheduler, worker, and webserver processes."
  type        = string
  default     = "3"
}

variable "region" {
  description = "Region where the Cloud Composer Environment is created."
  type        = string
  default     = "us-central1"
}

variable "service_ip_allocation_range_name" {
  description = "The name of the services' secondary range used to allocate IP addresses to the cluster."
  type        = string
  default     = null
}

variable "subnetwork" {
  description = "The subnetwork to host the composer cluster."
  type        = string
  default     = null
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

variable "use_ip_aliases" {
  description = "Enable Alias IPs in the GKE cluster. If true, a VPC-native cluster is created."
  type        = bool
  default     = false
}

variable "web_server_allowed_ip_ranges" {
  description = "The network-level access control policy for the Airflow web server. If unspecified, no network-level access restrictions will be applied."
  type = list(object({
    value       = string,
    description = string
  }))
  default = null
}

variable "web_server_ipv4_cidr" {
  description = "The CIDR block from which IP range in tenant project will be reserved for the web server."
  type        = string
  default     = null
}

variable "zone" {
  description = "Zone where the Cloud Composer nodes are created."
  type        = string
  default     = "us-central1-f"
}
