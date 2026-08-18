variable "backends" {
  description = "List of backends, should be a map of key-value pairs for each backend, mush have the 'group' key."
  type        = list(any)
  default     = ""
}

variable "health_port" {
  description = "Port to perform health checks on."
  type        = string
  default     = ""
}

variable "ip_address" {
  description = "IP address of the internal load balancer, if empty one will be assigned. Default is empty."
  type        = string
  default     = ""
}

variable "ip_protocol" {
  description = "The IP protocol for the backend and frontend forwarding rule. TCP or UDP."
  type        = string
  default     = "TCP"
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

variable "network_project" {
  description = "Name of the project for the network. Useful for shared VPC. Default is var.project."
  type        = string
  default     = ""
}

variable "ports" {
  description = "List of ports range to forward to backend services. Max is 5."
  type        = list(any)
  default     = ""
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

variable "session_affinity" {
  description = "The session affinity for the backends example: NONE, CLIENT_IP. Default is NONE."
  type        = string
  default     = "NONE"
}

variable "source_tags" {
  description = "List of source tags for traffic between the internal load balancer."
  type        = list(any)
  default     = ""
}

variable "target_tags" {
  description = "List of target tags for traffic between the internal load balancer."
  type        = list(any)
  default     = ""
}
