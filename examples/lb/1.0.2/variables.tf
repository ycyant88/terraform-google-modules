variable "firewall_project" {
  description = "Name of the project to create the firewall rule in. Useful for shared VPC. Default is var.project."
  type        = string
  default     = ""
}

variable "name" {
  description = "Name for the forwarding rule and prefix for supporting resources."
  type        = string
  default     = ""
}

variable "network" {
  description = "Name of the network to create resources in."
  type        = string
  default     = "default"
}

variable "project" {
  description = "The project to deploy to, if not set the default provider project is used."
  type        = string
  default     = ""
}

variable "region" {
  description = "Region for cloud resources."
  type        = string
  default     = "us-central1"
}

variable "service_port" {
  description = "TCP port your service is listening on."
  type        = string
  default     = ""
}

variable "session_affinity" {
  description = "How to distribute load. Options are NONE, CLIENT_IP and CLIENT_IP_PROTO"
  type        = string
  default     = "NONE"
}

variable "target_tags" {
  description = "List of target tags to allow traffic using firewall rule."
  type        = list(any)
  default     = ""
}
