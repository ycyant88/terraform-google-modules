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
  version                         = "4.5.0"
  address                         = var.address
  backends                        = var.backends
  cdn                             = var.cdn
  certificate                     = var.certificate
  create_address                  = var.create_address
  create_url_map                  = var.create_url_map
  http_forward                    = var.http_forward
  https_redirect                  = var.https_redirect
  ip_version                      = var.ip_version
  managed_ssl_certificate_domains = var.managed_ssl_certificate_domains
  name                            = var.name
  private_key                     = var.private_key
  project                         = var.project
  quic                            = var.quic
  security_policy                 = var.security_policy
  ssl                             = var.ssl
  ssl_certificates                = var.ssl_certificates
  ssl_policy                      = var.ssl_policy
  url_map                         = var.url_map
  use_ssl_certificates            = var.use_ssl_certificates
}
