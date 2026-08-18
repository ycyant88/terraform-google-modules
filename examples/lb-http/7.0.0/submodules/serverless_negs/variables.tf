variable "address" {
  description = "Existing IPv4 address to use (the actual IP address value)"
  type        = string
  default     = null
}

variable "backends" {
  description = "Map backend indices to list of backend maps."
  type = map(object({
    protocol                = string
    port_name               = string
    description             = string
    enable_cdn              = bool
    compression_mode        = string
    security_policy         = string
    custom_request_headers  = list(string)
    custom_response_headers = list(string)



    log_config = object({
      enable      = bool
      sample_rate = number
    })

    groups = list(object({
      group = string

    }))
    iap_config = object({
      enable               = bool
      oauth2_client_id     = string
      oauth2_client_secret = string
    })
  }))
  default = ""
}

variable "certificate" {
  description = "Content of the SSL certificate. Required if ssl is true and ssl_certificates is empty."
  type        = string
  default     = null
}

variable "certificate_map" {
  description = "Certificate Map ID in format projects/{project}/locations/global/certificateMaps/{name}. Identifies a certificate map associated with the given target proxy"
  type        = string
  default     = null
}

variable "create_address" {
  description = "Create a new global IPv4 address"
  type        = bool
  default     = true
}

variable "create_ipv6_address" {
  description = "Allocate a new IPv6 address. Conflicts with \"ipv6_address\" - if both specified, \"create_ipv6_address\" takes precedence."
  type        = bool
  default     = false
}

variable "create_url_map" {
  description = "Set to false if url_map variable is provided."
  type        = bool
  default     = true
}

variable "enable_ipv6" {
  description = "Enable IPv6 address on the CDN load-balancer"
  type        = bool
  default     = false
}

variable "http_forward" {
  description = "Set to false to disable HTTP port 80 forward"
  type        = bool
  default     = true
}

variable "https_redirect" {
  description = "Set to true to enable https redirect on the lb."
  type        = bool
  default     = false
}

variable "ipv6_address" {
  description = "An existing IPv6 address to use (the actual IP address value)"
  type        = string
  default     = null
}

variable "labels" {
  description = "The labels to attach to resources created by this module"
  type        = map(string)
  default     = {}
}

variable "load_balancing_scheme" {
  description = "Load balancing scheme type (EXTERNAL for classic external load balancer, EXTERNAL_MANAGED for Envoy-based load balancer, INTERNAL for classic internal load balancer, and INTERNAL_SELF_MANAGED for internal load balancer)"
  type        = string
  default     = "EXTERNAL"
}

variable "managed_ssl_certificate_domains" {
  description = "Create Google-managed SSL certificates for specified domains. Requires ssl to be set to true and use_ssl_certificates set to false."
  type        = list(string)
  default     = []
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

variable "random_certificate_suffix" {
  description = "Bool to enable/disable random certificate name generation. Set and keep this to true if you need to change the SSL cert."
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
