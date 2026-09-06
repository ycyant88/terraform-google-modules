variable "create_network" {
  description = "When set to true, VPC will be auto created"
  type        = bool
  default     = true
}

variable "gh_token" {
  description = "Github token that is used for generating Self Hosted Runner Token"
  type        = string
  default     = ""
}

variable "ip_range_pods_cidr" {
  description = "The secondary ip range cidr to use for pods"
  type        = string
  default     = "192.168.0.0/18"
}

variable "ip_range_pods_name" {
  description = "The secondary ip range to use for pods"
  type        = string
  default     = "ip-range-pods"
}

variable "ip_range_services_cider" {
  description = "The secondary ip range cidr to use for services"
  type        = string
  default     = "192.168.64.0/18"
}

variable "ip_range_services_name" {
  description = "The secondary ip range to use for services"
  type        = string
  default     = "ip-range-scv"
}

variable "machine_type" {
  description = "Machine type for runner node pool"
  type        = string
  default     = "n1-standard-4"
}

variable "max_node_count" {
  description = "Maximum number of nodes in the runner node pool"
  type        = number
  default     = 4
}

variable "min_node_count" {
  description = "Minimum number of nodes in the runner node pool"
  type        = number
  default     = 2
}

variable "network_name" {
  description = "Name for the VPC network"
  type        = string
  default     = "runner-network"
}

variable "project_id" {
  description = "The project id to deploy Github Runner cluster"
  type        = string
  default     = ""
}

variable "region" {
  description = "The GCP region to deploy instances into"
  type        = string
  default     = "us-east4"
}

variable "repo_name" {
  description = "Name of the repo for the Github Action"
  type        = string
  default     = ""
}

variable "repo_owner" {
  description = "Owner of the repo for the Github Action"
  type        = string
  default     = ""
}

variable "repo_url" {
  description = "Repo URL for the Github Action"
  type        = string
  default     = ""
}

variable "runner_k8s_config" {
  description = "Name for the k8s secret required to configure gh runners on GKE"
  type        = string
  default     = "runner-k8s-config"
}

variable "service_account" {
  description = "Optional Service Account for the nodes"
  type        = string
  default     = ""
}

variable "subnet_ip" {
  description = "IP range for the subnet"
  type        = string
  default     = "10.0.0.0/17"
}

variable "subnet_name" {
  description = "Name for the subnet"
  type        = string
  default     = "runner-subnet"
}

variable "subnetwork_project" {
  description = "The ID of the project in which the subnetwork belongs. If it is not provided, the project_id is used."
  type        = string
  default     = ""
}

variable "zones" {
  description = "The GCP zone to deploy gke into"
  type        = list(string)
  default     = ["us-east4-a"]
}
