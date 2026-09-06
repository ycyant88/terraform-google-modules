variable "backend_params" {
  description = "Comma-separated encoded list of parameters in order: health check path, service port name, service port, backend timeout seconds"
  type        = list(any)
  default     = ""
}

variable "backend_protocol" {
  description = "The protocol with which to talk to the backend service"
  type        = string
  default     = "HTTP"
}

variable "backends" {
  description = "Map backend indices to list of backend maps."
  type        = map(any)
  default     = ""
}

variable "cdn" {
  description = "Set to true to enable cdn on backend."
  type        = string
  default     = "false"
}

variable "certificate" {
  description = "Content of the SSL certificate. Required if ssl is true and ssl_certificates is empty."
  type        = string
  default     = ""
}

variable "create_url_map" {
  description = "Set to false if url_map variable is provided."
  type        = bool
  default     = true
}

variable "firewall_networks" {
  description = "Names of the networks to create firewall rules in"
  type        = list(any)
  default     = ["default"]
}

variable "firewall_projects" {
  description = "Names of the projects to create firewall rules in"
  type        = list(any)
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
  default     = ""
}

variable "name" {
  description = "Name for the forwarding rule and prefix for supporting resources"
  type        = string
  default     = ""
}

variable "private_key" {
  description = "Content of the private SSL key. Required if ssl is true and ssl_certificates is empty."
  type        = string
  default     = ""
}

variable "project" {
  description = "The project to deploy to, if not set the default provider project is used."
  type        = string
  default     = ""
}

variable "region" {
  description = "Region for cloud resources"
  type        = string
  default     = "us-central1"
}

variable "security_policy" {
  description = "The resource URL for the security policy to associate with the backend service"
  type        = string
  default     = ""
}

variable "ssl" {
  description = "Set to true to enable SSL support, requires variable ssl_certificates - a list of self_link certs"
  type        = bool
  default     = false
}

variable "ssl_certificates" {
  description = "SSL cert self_link list. Required if ssl is true and no private_key and certificate is provided."
  type        = list(any)
  default     = []
}

variable "target_tags" {
  description = "List of target tags for health check firewall rule."
  type        = list(any)
  default     = ""
}

variable "url_map" {
  description = "The url_map resource to use. Default is to send all traffic to first backend."
  type        = string
  default     = ""
}

variable "use_ssl_certificates" {
  description = "If true, use the certificates provided by ssl_certificates, otherwise, create cert from private_key and certificate"
  type        = bool
  default     = false
}
