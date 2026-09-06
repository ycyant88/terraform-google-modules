variable "additional_metadata" {
  description = "Additional metadata to attach to the instance"
  type        = map(any)
  default     = {}
}

variable "cooldown_period" {
  description = "The number of seconds that the autoscaler should wait before it starts collecting information from a new instance."
  type        = string
  default     = 60
}

variable "create_network" {
  description = "When set to true, VPC,router and NAT will be auto created"
  type        = bool
  default     = true
}

variable "custom_metadata" {
  description = "User provided custom metadata"
  type        = map(any)
  default     = {}
}

variable "gh_token" {
  description = "Github token that is used for generating Self Hosted Runner Token"
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
  default     = "n1-standard-1"
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

variable "shutdown_script" {
  description = "User shutdown script to run when instances shutdown"
  type        = string
  default     = ""
}

variable "source_image" {
  description = "Source disk image. If neither source_image nor source_image_family is specified, defaults to the latest public CentOS image."
  type        = string
  default     = ""
}

variable "source_image_family" {
  description = "Source image family. If neither source_image nor source_image_family is specified, defaults to the latest public Ubuntu image."
  type        = string
  default     = "ubuntu-1804-lts"
}

variable "source_image_project" {
  description = "Project where the source image comes from"
  type        = string
  default     = "gce-uefi-images"
}

variable "startup_script" {
  description = "User startup script to run when instances spin up"
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
