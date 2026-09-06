variable "composer_env_name" {
  description = "Name of Cloud Composer Environment"
  type        = string
  default     = ""
}

variable "composer_service_account" {
  description = "Service Account for running Cloud Composer."
  type        = string
  default     = ""
}

variable "ip_cidr_range" {
  description = "CIDR range for the Cloud Composer Subnet."
  type        = string
  default     = "10.0.0.0/14"
}

variable "machine_type" {
  description = "Machine type of Cloud Composer nodes."
  type        = string
  default     = "n1-standard-8"
}

variable "network_name" {
  description = "Name of network created for Cloud Composer Environment."
  type        = string
  default     = "composer-network-01"
}

variable "node_count" {
  description = "Number of worker nodes in Cloud Composer Environment."
  type        = number
  default     = 3
}

variable "project_id" {
  description = "Project ID where Cloud Composer Environment is created."
  type        = string
  default     = ""
}

variable "region" {
  description = "Region where the Cloud Composer Environment is created."
  type        = string
  default     = "us-central1"
}

variable "subnet_name" {
  description = "Name of subnetwork created for Cloud Composer Environment."
  type        = string
  default     = "composer-subnet-01"
}

variable "zone" {
  description = "Zone where the Cloud Composer nodes are created."
  type        = string
  default     = "us-central1-f"
}
