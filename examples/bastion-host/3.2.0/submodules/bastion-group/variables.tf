variable "fw_name_allow_ssh_from_health_check_cidrs" {
  description = "Firewall rule name for allowing Health Checks"
  type        = string
  default     = "allow-ssh-from-health-check-cidrs"
}

variable "fw_name_allow_ssh_from_iap" {
  description = "Firewall rule name for allowing SSH from IAP"
  type        = string
  default     = "allow-ssh-from-iap-to-bastion-group"
}

variable "health_check" {
  description = "Health check config for the mig."
  type = object({
    type                = string
    initial_delay_sec   = number
    check_interval_sec  = number
    healthy_threshold   = number
    timeout_sec         = number
    unhealthy_threshold = number
    response            = string
    proxy_header        = string
    port                = number
    request             = string

    # Unused fields.
    request_path = string
    host         = string
  })
  default = { "check_interval_sec" : 30, "healthy_threshold" : 1, "host" : "", "initial_delay_sec" : 30, "port" : 22, "proxy_header" : "NONE", "request" : "", "request_path" : "", "response" : "", "timeout_sec" : 10, "type" : "tcp", "unhealthy_threshold" : 5 }
}

variable "host_project" {
  description = "The network host project ID"
  type        = string
  default     = ""
}

variable "image_family" {
  description = "Source image family for the Bastion."
  type        = string
  default     = "centos-7"
}

variable "image_project" {
  description = "Project where the source image for the Bastion comes from"
  type        = string
  default     = "gce-uefi-images"
}

variable "labels" {
  description = "Key-value map of labels to assign to the bastion host"
  type        = map(any)
  default     = {}
}

variable "machine_type" {
  description = "Instance type for the Bastion host"
  type        = string
  default     = "n1-standard-1"
}

variable "members" {
  description = "List of IAM resources to allow access to the bastion host"
  type        = list(string)
  default     = []
}

variable "name" {
  description = "Name prefix of bastion instances"
  type        = string
  default     = "bastion"
}

variable "network" {
  description = "Self link for the network on which the Bastion should live"
  type        = string
  default     = ""
}

variable "project" {
  description = "The project ID to deploy to"
  type        = string
  default     = ""
}

variable "random_role_id" {
  description = "Enables role random id generation."
  type        = bool
  default     = true
}

variable "region" {
  description = "The primary region where the bastion host will live"
  type        = string
  default     = "us-central1"
}

variable "scopes" {
  description = "List of scopes to attach to the bastion host"
  type        = list(any)
  default     = ["cloud-platform"]
}

variable "service_account_name" {
  description = "Account ID for the service account"
  type        = string
  default     = "bastion-group"
}

variable "service_account_roles" {
  description = "List of IAM roles to assign to the service account."
  type        = list(any)
  default     = ["roles/logging.logWriter", "roles/monitoring.metricWriter", "roles/monitoring.viewer", "roles/compute.osLogin"]
}

variable "service_account_roles_supplemental" {
  description = "An additional list of roles to assign to the bastion if desired"
  type        = list(any)
  default     = []
}

variable "shielded_vm" {
  description = "Enable shielded VM on the bastion host (recommended)"
  type        = bool
  default     = true
}

variable "startup_script" {
  description = "Render a startup script with a template."
  type        = string
  default     = ""
}

variable "subnet" {
  description = "Self link for the subnet on which the Bastion should live. Can be private when using IAP"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Network tags, provided as a list"
  type        = list(string)
  default     = []
}

variable "target_size" {
  description = "Number of instances to create"
  type        = string
  default     = 1
}

variable "zone" {
  description = "The primary zone where the bastion host will live"
  type        = string
  default     = "us-central1-a"
}
