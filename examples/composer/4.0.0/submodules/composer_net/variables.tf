variable "cloud_composer_network_ipv4_cidr_block" {
  description = "The CIDR block from which IP range in tenant project will be reserved."
  type        = string
  default     = null
}

variable "composer_env_name" {
  description = "Name of Cloud Composer Environment"
  type        = string
  default     = ""
}

variable "gke_pods_services_ip_ranges" {
  description = "The secondary IP ranges for the GKE Pods and Services IP ranges"
  type        = list(string)
  default     = ""
}

variable "gke_subnet_ip_range" {
  description = "The GKE subnet IP range"
  type        = list(string)
  default     = ""
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

variable "region" {
  description = "Region where the Cloud Composer Environment is created."
  type        = string
  default     = "us-central1"
}

variable "service_project_id" {
  description = "Project ID where Cloud Composer Environment is created."
  type        = string
  default     = ""
}

variable "subnetwork" {
  description = "The subnetwork to host the composer cluster."
  type        = string
  default     = ""
}
