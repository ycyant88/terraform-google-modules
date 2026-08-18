terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.0"
    }
  }
}

provider "google" {
  project = var.project
  region  = var.region
}

module "lb-http" {
  source                          = "terraform-google-modules/lb-http/google"
  version                         = "6.0.0"
  address                         = var.address
  backends                        = var.backends
  cdn                             = var.cdn
  certificate                     = var.certificate
  create_address                  = var.create_address
  create_ipv6_address             = var.create_ipv6_address
  create_url_map                  = var.create_url_map
  enable_ipv6                     = var.enable_ipv6
  firewall_networks               = var.firewall_networks
  firewall_projects               = var.firewall_projects
  http_forward                    = var.http_forward
  https_redirect                  = var.https_redirect
  ipv6_address                    = var.ipv6_address
  managed_ssl_certificate_domains = var.managed_ssl_certificate_domains
  name                            = var.name
  private_key                     = var.private_key
  project                         = var.project
  quic                            = var.quic
  random_certificate_suffix       = var.random_certificate_suffix
  security_policy                 = var.security_policy
  ssl                             = var.ssl
  ssl_certificates                = var.ssl_certificates
  ssl_policy                      = var.ssl_policy
  target_service_accounts         = var.target_service_accounts
  target_tags                     = var.target_tags
  url_map                         = var.url_map
  use_ssl_certificates            = var.use_ssl_certificates
}
