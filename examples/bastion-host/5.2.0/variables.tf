variable "access_config" {
  description = "Access configs for network, nat_ip and DNS"
  type = list(object({
    network_tier           = string
    nat_ip                 = string
    public_ptr_domain_name = string
  }))
  default = [{ "nat_ip" : "", "network_tier" : "PREMIUM", "public_ptr_domain_name" : "" }]
}

variable "additional_networks" {
  description = "Additional network interface details for the instance template, if any."
  type = list(object({
    network            = string
    subnetwork         = string
    subnetwork_project = string
    network_ip         = string
    access_config = list(object({
      nat_ip       = string
      network_tier = string
    }))
  }))
  default = []
}

variable "additional_ports" {
  description = "A list of additional ports/ranges to open access to on the instances from IAP."
  type        = list(string)
  default     = []
}

variable "create_firewall_rule" {
  description = "If we need to create the firewall rule or not."
  type        = bool
  default     = true
}

variable "create_instance_from_template" {
  description = "Whether to create and instance from the template or not. If false, no instance is created, but the instance template is created and usable by a MIG"
  type        = bool
  default     = true
}

variable "disk_size_gb" {
  description = "Boot disk size in GB"
  type        = number
  default     = 100
}

variable "disk_type" {
  description = "Boot disk type, can be either pd-ssd, local-ssd, or pd-standard"
  type        = string
  default     = "pd-standard"
}

variable "external_ip" {
  description = "Set to true if an ephemeral or static external IP/DNS is required, must also set access_config if true"
  type        = bool
  default     = false
}

variable "fw_name_allow_ssh_from_iap" {
  description = "Firewall rule name for allowing SSH from IAP"
  type        = string
  default     = "allow-ssh-from-iap-to-tunnel"
}

variable "host_project" {
  description = "The network host project ID"
  type        = string
  default     = ""
}

variable "image" {
  description = "Source image for the Bastion. If image is not specified, image_family will be used (which is the default)."
  type        = string
  default     = ""
}

variable "image_family" {
  description = "Source image family for the Bastion."
  type        = string
  default     = "debian-11"
}

variable "image_project" {
  description = "Project where the source image for the Bastion comes from"
  type        = string
  default     = "debian-cloud"
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

variable "metadata" {
  description = "Key-value map of additional metadata to assign to the instances"
  type        = map(string)
  default     = {}
}

variable "name" {
  description = "Name of the Bastion instance"
  type        = string
  default     = "bastion-vm"
}

variable "name_prefix" {
  description = "Name prefix for instance template"
  type        = string
  default     = "bastion-instance-template"
}

variable "network" {
  description = "Self link for the network on which the Bastion should live"
  type        = string
  default     = ""
}

variable "preemptible" {
  description = "Allow the instance to be preempted"
  type        = bool
  default     = false
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
  description = "The region where the bastion instance template will live"
  type        = string
  default     = null
}

variable "scopes" {
  description = "List of scopes to attach to the bastion host"
  type        = list(string)
  default     = ["cloud-platform"]
}

variable "service_account_email" {
  description = "If set, the service account and its permissions will not be created. The service account being passed in should have at least the roles listed in the service_account_roles variable so that logging and OS Login work as expected."
  type        = string
  default     = ""
}

variable "service_account_name" {
  description = "Account ID for the service account"
  type        = string
  default     = "bastion"
}

variable "service_account_roles" {
  description = "List of IAM roles to assign to the service account."
  type        = list(string)
  default     = ["roles/logging.logWriter", "roles/monitoring.metricWriter", "roles/monitoring.viewer", "roles/compute.osLogin"]
}

variable "service_account_roles_supplemental" {
  description = "An additional list of roles to assign to the bastion if desired"
  type        = list(string)
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

variable "zone" {
  description = "The primary zone where the bastion host will live"
  type        = string
  default     = "us-central1-a"
}
