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

module "kubernetes-engine" {
  source                            = "terraform-google-modules/kubernetes-engine/google"
  version                           = "3.0.0"
  basic_auth_password               = var.basic_auth_password
  basic_auth_username               = var.basic_auth_username
  cluster_ipv4_cidr                 = var.cluster_ipv4_cidr
  configure_ip_masq                 = var.configure_ip_masq
  description                       = var.description
  disable_legacy_metadata_endpoints = var.disable_legacy_metadata_endpoints
  horizontal_pod_autoscaling        = var.horizontal_pod_autoscaling
  http_load_balancing               = var.http_load_balancing
  initial_node_count                = var.initial_node_count
  ip_masq_link_local                = var.ip_masq_link_local
  ip_masq_resync_interval           = var.ip_masq_resync_interval
  ip_range_pods                     = var.ip_range_pods
  ip_range_services                 = var.ip_range_services
  issue_client_certificate          = var.issue_client_certificate
  kubernetes_dashboard              = var.kubernetes_dashboard
  kubernetes_version                = var.kubernetes_version
  logging_service                   = var.logging_service
  maintenance_start_time            = var.maintenance_start_time
  master_authorized_networks_config = var.master_authorized_networks_config
  monitoring_service                = var.monitoring_service
  name                              = var.name
  network                           = var.network
  network_policy                    = var.network_policy
  network_policy_provider           = var.network_policy_provider
  network_project_id                = var.network_project_id
  node_pools                        = var.node_pools
  node_pools_labels                 = var.node_pools_labels
  node_pools_metadata               = var.node_pools_metadata
  node_pools_oauth_scopes           = var.node_pools_oauth_scopes
  node_pools_tags                   = var.node_pools_tags
  node_pools_taints                 = var.node_pools_taints
  node_version                      = var.node_version
  non_masquerade_cidrs              = var.non_masquerade_cidrs
  project_id                        = var.project_id
  region                            = var.region
  regional                          = var.regional
  remove_default_node_pool          = var.remove_default_node_pool
  service_account                   = var.service_account
  stub_domains                      = var.stub_domains
  subnetwork                        = var.subnetwork
  upstream_nameservers              = var.upstream_nameservers
  zones                             = var.zones
}
