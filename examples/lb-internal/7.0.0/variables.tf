variable "all_ports" {
  description = "Boolean for all_ports setting on forwarding rule. The ports or all_ports are mutually exclusive."
  type        = bool
  default     = null
}

variable "backends" {
  description = "List of backends, should be a map of key-value pairs for each backend, must have the 'group' key."
  type        = list(any)
  default     = ""
}

variable "connection_draining_timeout_sec" {
  description = "Time for which instance will be drained"
  type        = number
  default     = null
}

variable "create_backend_firewall" {
  description = "Controls if firewall rules for the backends will be created or not. Health-check firewall rules are controlled separately."
  type        = bool
  default     = true
}

variable "create_health_check_firewall" {
  description = "Controls if firewall rules for the health check will be created or not. If this rule is not present backend healthcheck will fail."
  type        = bool
  default     = true
}

variable "firewall_enable_logging" {
  description = "Controls if firewall rules that are created are to have logging configured. This will be ignored for firewall rules that are not created."
  type        = bool
  default     = false
}

variable "global_access" {
  description = "Allow all regions on the same VPC network access."
  type        = bool
  default     = false
}

variable "health_check" {
  description = "Health check to determine whether instances are responsive and able to do work"
  type = object({
    type                = string
    check_interval_sec  = optional(number)
    healthy_threshold   = optional(number)
    timeout_sec         = optional(number)
    unhealthy_threshold = optional(number)
    response            = optional(string)
    proxy_header        = optional(string)
    port                = optional(number)
    port_name           = optional(string)
    request             = optional(string)
    request_path        = optional(string)
    host                = optional(string)
    enable_log          = optional(bool)
  })
  default = ""
}

variable "ip_address" {
  description = "IP address of the internal load balancer, if empty one will be assigned. Default is empty."
  type        = string
  default     = null
}

variable "ip_protocol" {
  description = "The IP protocol for the backend and frontend forwarding rule. TCP or UDP."
  type        = string
  default     = "TCP"
}

variable "is_mirroring_collector" {
  description = "Indicates whether or not this load balancer can be used as a collector for packet mirroring. This can only be set to true for load balancers that have their loadBalancingScheme set to INTERNAL."
  type        = bool
  default     = false
}

variable "labels" {
  description = "The labels to attach to resources created by this module."
  type        = map(string)
  default     = {}
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
  description = "List of ports to forward to backend services. Max is 5. The ports or all_ports are mutually exclusive."
  type        = list(string)
  default     = null
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

variable "service_label" {
  description = "Service label is used to create internal DNS name"
  type        = string
  default     = null
}

variable "session_affinity" {
  description = "The session affinity for the backends example: NONE, CLIENT_IP. Default is NONE."
  type        = string
  default     = "NONE"
}

variable "source_ip_ranges" {
  description = "List of source ip ranges for traffic between the internal load balancer."
  type        = list(string)
  default     = null
}

variable "source_service_accounts" {
  description = "List of source service accounts for traffic between the internal load balancer."
  type        = list(string)
  default     = null
}

variable "source_tags" {
  description = "List of source tags for traffic between the internal load balancer."
  type        = list(string)
  default     = ""
}

variable "subnetwork" {
  description = "Name of the subnetwork to create resources in."
  type        = string
  default     = "default"
}

variable "target_service_accounts" {
  description = "List of target service accounts for traffic between the internal load balancer."
  type        = list(string)
  default     = null
}

variable "target_tags" {
  description = "List of target tags for traffic between the internal load balancer."
  type        = list(string)
  default     = ""
}
