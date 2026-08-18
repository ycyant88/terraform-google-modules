variable "address" {
  description = "IP address self link"
  type        = string
  default     = null
}

variable "backends" {
  description = "Map backend indices to list of backend maps."
  type = map(object({
    description                     = string
    protocol                        = string
    port                            = number
    port_name                       = string
    timeout_sec                     = number
    connection_draining_timeout_sec = number
    enable_cdn                      = bool
    session_affinity                = string
    affinity_cookie_ttl_sec         = number
    health_check = object({
      check_interval_sec  = number
      timeout_sec         = number
      healthy_threshold   = number
      unhealthy_threshold = number
      request_path        = string
      port                = number
      host                = string
    })
    log_config = object({
      enable      = bool
      sample_rate = number
    })
    groups = list(object({
      group                        = string
      balancing_mode               = string
      capacity_scaler              = number
      description                  = string
      max_connections              = number
      max_connections_per_instance = number
      max_connections_per_endpoint = number
      max_rate                     = number
      max_rate_per_instance        = number
      max_rate_per_endpoint        = number
      max_utilization              = number
    }))

  }))
  default = ""
}

variable "cdn" {
  description = "Set to true to enable cdn on backend."
  type        = bool
  default     = false
}

variable "certificate" {
  description = "Content of the SSL certificate. Required if ssl is true and ssl_certificates is empty."
  type        = string
  default     = null
}

variable "create_address" {
  description = "Create a new global address"
  type        = bool
  default     = true
}

variable "create_url_map" {
  description = "Set to false if url_map variable is provided."
  type        = bool
  default     = true
}

variable "firewall_networks" {
  description = "Names of the networks to create firewall rules in"
  type        = list(string)
  default     = ["default"]
}

variable "firewall_projects" {
  description = "Names of the projects to create firewall rules in"
  type        = list(string)
  default     = ["default"]
}

variable "http_forward" {
  description = "Set to false to disable HTTP port 80 forward"
  type        = bool
  default     = true
}

variable "ip_version" {
  description = "IP version for the Global address (IPv4 or v6) - Empty defaults to IPV4"
  type        = string
  default     = null
}

variable "name" {
  description = "Name for the forwarding rule and prefix for supporting resources"
  type        = string
  default     = ""
}

variable "private_key" {
  description = "Content of the private SSL key. Required if ssl is true and ssl_certificates is empty."
  type        = string
  default     = null
}

variable "project" {
  description = "The project to deploy to, if not set the default provider project is used."
  type        = string
  default     = ""
}

variable "quic" {
  description = "Set to true to enable QUIC support"
  type        = bool
  default     = false
}

variable "security_policy" {
  description = "The resource URL for the security policy to associate with the backend service"
  type        = string
  default     = null
}

variable "ssl" {
  description = "Set to true to enable SSL support, requires variable ssl_certificates - a list of self_link certs"
  type        = bool
  default     = false
}

variable "ssl_certificates" {
  description = "SSL cert self_link list. Required if ssl is true and no private_key and certificate is provided."
  type        = list(string)
  default     = []
}

variable "ssl_policy" {
  description = "Selfink to SSL Policy"
  type        = string
  default     = null
}

variable "target_service_accounts" {
  description = "List of target service accounts for health check firewall rule. Exactly one of target_tags or target_service_accounts should be specified."
  type        = list(string)
  default     = []
}

variable "target_tags" {
  description = "List of target tags for health check firewall rule. Exactly one of target_tags or target_service_accounts should be specified."
  type        = list(string)
  default     = []
}

variable "url_map" {
  description = "The url_map resource to use. Default is to send all traffic to first backend."
  type        = string
  default     = null
}

variable "use_ssl_certificates" {
  description = "If true, use the certificates provided by ssl_certificates, otherwise, create cert from private_key and certificate"
  type        = bool
  default     = false
}
