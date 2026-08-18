variable "gke_cluster" {
  description = "Name of the Cloud Composer Kubernetes cluster."
  type        = string
  default     = ""
}

variable "master_authorized_networks" {
  description = "List of master authorized networks. If null is provided this module will do nothing. If empty string then all public traffic will be denied"
  type        = list(object({ cidr_block = string, display_name = string }))
  default     = ""
}

variable "project_id" {
  description = "Project ID where Cloud Composer Environment is created."
  type        = string
  default     = ""
}

variable "zone" {
  description = "Zone where the Cloud Composer Kubernetes Master lives."
  type        = string
  default     = ""
}
