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

module "lb-http_serverless_negs" {
  source                          = "terraform-google-modules/lb-http/google//modules/serverless_negs"
  version                         = "10.2.0"
  address                         = var.address
  backends                        = var.backends
  certificate                     = var.certificate
  certificate_map                 = var.certificate_map
  create_address                  = var.create_address
  create_ipv6_address             = var.create_ipv6_address
  create_ssl_certificate          = var.create_ssl_certificate
  create_url_map                  = var.create_url_map
  edge_security_policy            = var.edge_security_policy
  enable_ipv6                     = var.enable_ipv6
  http_forward                    = var.http_forward
  http_port                       = var.http_port
  https_port                      = var.https_port
  https_redirect                  = var.https_redirect
  ipv6_address                    = var.ipv6_address
  labels                          = var.labels
  load_balancing_scheme           = var.load_balancing_scheme
  managed_ssl_certificate_domains = var.managed_ssl_certificate_domains
  name                            = var.name
  network                         = var.network
  private_key                     = var.private_key
  project                         = var.project
  quic                            = var.quic
  random_certificate_suffix       = var.random_certificate_suffix
  security_policy                 = var.security_policy
  server_tls_policy               = var.server_tls_policy
  ssl                             = var.ssl
  ssl_certificates                = var.ssl_certificates
  ssl_policy                      = var.ssl_policy
  url_map                         = var.url_map
}
