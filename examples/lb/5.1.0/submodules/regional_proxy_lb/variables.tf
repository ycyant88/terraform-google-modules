variable "address" {
  description = "IP address of the external load balancer, if not provided, an ephemeral address will be created"
  type        = string
  default     = null
}

variable "backend" {
  description = "backend attributes"
  type = object({
    port             = optional(number)
    port_name        = optional(string)
    description      = optional(string)
    backend_type     = string #INSTANCE_GROUP, NETWORK_ENDPOINT_GROUP
    session_affinity = optional(string)
    timeout_sec      = optional(number)

    log_config = object({
      enable      = optional(bool)
      sample_rate = optional(number)
    })

    groups = list(object({
      group = string

      balancing_mode               = optional(string)
      capacity_scaler              = optional(number)
      description                  = optional(string)
      max_connections              = optional(number)
      max_connections_per_instance = optional(number)
      max_connections_per_endpoint = optional(number)
      max_rate                     = optional(number)
      max_rate_per_instance        = optional(number)
      max_rate_per_endpoint        = optional(number)
      max_utilization              = optional(number)
    }))
  })
  default = ""
}

variable "create_firewall_rules" {
  description = "Whether to create firewall rules for health check and proxy"
  type        = bool
  default     = false
}

variable "create_proxy_only_subnet" {
  description = "Whether to create the proxy only subnet for the region"
  type        = bool
  default     = false
}

variable "health_check" {
  description = "Health check to determine whether instances are responsive and able to do work"
  type = object({
    check_interval_sec  = optional(number)
    healthy_threshold   = optional(number)
    timeout_sec         = optional(number)
    unhealthy_threshold = optional(number)
    tcp_health_check = object({
      request            = optional(string)
      response           = optional(string)
      port               = optional(number)
      port_name          = optional(string)
      port_specification = optional(string)
      proxy_header       = optional(string)
      }
    )
    }
  )
  default = ""
}

variable "name" {
  description = "Name of the load balancer and prefix for supporting resources."
  type        = string
  default     = ""
}

variable "network" {
  description = "Name of the network to create resources in."
  type        = string
  default     = ""
}

variable "network_project" {
  description = "Name of the project where the network resides. Useful for shared VPC. Default is var.project."
  type        = string
  default     = ""
}

variable "network_tier" {
  description = "The network tier to use for the forwarding rule. Default is STANDARD."
  type        = string
  default     = "STANDARD"
}

variable "port_front_end" {
  description = "Port of the load balancer front end"
  type        = number
  default     = ""
}

variable "project" {
  description = "The project to deploy to, if not set the default provider project is used."
  type        = string
  default     = null
}

variable "proxy_header" {
  description = "Specifies the type of proxy header to append before sending data to the backend. Default value is NONE. Possible values are: NONE, PROXY_V1"
  type        = string
  default     = "NONE"
}

variable "proxy_only_subnet_cidr" {
  description = "The CIDR block of the proxy only subnet.This is required when create_proxy_only_subnet is set to true."
  type        = string
  default     = ""
}

variable "region" {
  description = "Region of the created GCP resources from this module."
  type        = string
  default     = ""
}

variable "target_tags" {
  description = "List of target tags to allow traffic using firewall rule.This is required when create_firewall_rules is set to true."
  type        = list(string)
  default     = []
}
