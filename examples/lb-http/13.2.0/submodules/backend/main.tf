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

module "lb-http_backend" {
  source                          = "terraform-google-modules/lb-http/google//modules/backend"
  version                         = "13.2.0"
  affinity_cookie_ttl_sec         = var.affinity_cookie_ttl_sec
  backend_bucket_name             = var.backend_bucket_name
  cdn_policy                      = var.cdn_policy
  compression_mode                = var.compression_mode
  connection_draining_timeout_sec = var.connection_draining_timeout_sec
  custom_request_headers          = var.custom_request_headers
  custom_response_headers         = var.custom_response_headers
  description                     = var.description
  edge_security_policy            = var.edge_security_policy
  enable_cdn                      = var.enable_cdn
  firewall_networks               = var.firewall_networks
  firewall_projects               = var.firewall_projects
  firewall_source_ranges          = var.firewall_source_ranges
  groups                          = var.groups
  health_check                    = var.health_check
  host_path_mappings              = var.host_path_mappings
  iap_config                      = var.iap_config
  load_balancing_scheme           = var.load_balancing_scheme
  locality_lb_policy              = var.locality_lb_policy
  log_config                      = var.log_config
  name                            = var.name
  outlier_detection               = var.outlier_detection
  port_name                       = var.port_name
  project_id                      = var.project_id
  protocol                        = var.protocol
  psc_neg_backends                = var.psc_neg_backends
  security_policy                 = var.security_policy
  serverless_neg_backends         = var.serverless_neg_backends
  session_affinity                = var.session_affinity
  target_service_accounts         = var.target_service_accounts
  target_tags                     = var.target_tags
  timeout_sec                     = var.timeout_sec
}
