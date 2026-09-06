variable "additional_metadata" {
  description = "Additional metadata to attach to the instance"
  type        = map(any)
  default     = {}
}

variable "cooldown_period" {
  description = "The number of seconds that the autoscaler should wait before it starts collecting information from a new instance."
  type        = number
  default     = 60
}

variable "create_network" {
  description = "When set to true, VPC,router and NAT will be auto created"
  type        = bool
  default     = true
}

variable "dind" {
  description = "Flag to determine whether to expose dockersock "
  type        = bool
  default     = false
}

variable "gh_token" {
  description = "Github token that is used for generating Self Hosted Runner Token"
  type        = string
  default     = ""
}

variable "image" {
  description = "The github runner image"
  type        = string
  default     = ""
}

variable "instance_name" {
  description = "The gce instance name"
  type        = string
  default     = "gh-runner"
}

variable "machine_type" {
  description = "The GCP machine type to deploy"
  type        = string
  default     = "n1-standard-4"
}

variable "network_name" {
  description = "Name for the VPC network"
  type        = string
  default     = "gh-runner-network"
}

variable "project_id" {
  description = "The project id to deploy Github Runner"
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

variable "restart_policy" {
  description = "The desired Docker restart policy for the runner image"
  type        = string
  default     = "Always"
}

variable "service_account" {
  description = "Service account email address"
  type        = string
  default     = ""
}

variable "subnet_ip" {
  description = "IP range for the subnet"
  type        = string
  default     = "10.10.10.0/24"
}

variable "subnet_name" {
  description = "Name for the subnet"
  type        = string
  default     = "gh-runner-subnet"
}

variable "subnetwork_project" {
  description = "The ID of the project in which the subnetwork belongs. If it is not provided, the project_id is used."
  type        = string
  default     = ""
}

variable "target_size" {
  description = "The number of runner instances"
  type        = number
  default     = 2
}

variable "zone" {
  description = "The GCP zone to deploy instances into"
  type        = string
  default     = "us-east4-b"
}
