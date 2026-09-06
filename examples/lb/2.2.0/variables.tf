variable "disable_health_check" {
  description = "Disables the health check on the target pool."
  type        = bool
  default     = false
}

variable "firewall_project" {
  description = "Name of the project to create the firewall rule in. Useful for shared VPC. Default is var.project."
  type        = string
  default     = ""
}

variable "health_check" {
  description = "Health check to determine whether instances are responsive and able to do work"
  type = object({
    check_interval_sec  = number
    healthy_threshold   = number
    timeout_sec         = number
    unhealthy_threshold = number
    port                = number
    request_path        = string
    host                = string
  })
  default = { "check_interval_sec" : null, "healthy_threshold" : null, "host" : null, "port" : null, "request_path" : null, "timeout_sec" : null, "unhealthy_threshold" : null }
}

variable "ip_address" {
  description = "IP address of the external load balancer, if empty one will be assigned."
  type        = string
  default     = null
}

variable "ip_protocol" {
  description = "The IP protocol for the frontend forwarding rule and firewall rule. TCP, UDP, ESP, AH, SCTP or ICMP."
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

variable "project" {
  description = "The project to deploy to, if not set the default provider project is used."
  type        = string
  default     = ""
}

variable "region" {
  description = "Region used for GCP resources."
  type        = string
  default     = ""
}

variable "service_port" {
  description = "TCP port your service is listening on."
  type        = number
  default     = ""
}

variable "session_affinity" {
  description = "How to distribute load. Options are NONE, CLIENT_IP and CLIENT_IP_PROTO"
  type        = string
  default     = "NONE"
}

variable "target_service_accounts" {
  description = "List of target service accounts to allow traffic using firewall rule."
  type        = list(string)
  default     = null
}

variable "target_tags" {
  description = "List of target tags to allow traffic using firewall rule."
  type        = list(string)
  default     = null
}
