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

module "kubernetes-engine_beta-private-cluster" {
  source                            = "terraform-google-modules/kubernetes-engine/google//modules/beta-private-cluster"
  version                           = "5.1.1"
  authenticator_security_group      = var.authenticator_security_group
  basic_auth_password               = var.basic_auth_password
  basic_auth_username               = var.basic_auth_username
  cloudrun                          = var.cloudrun
  cluster_ipv4_cidr                 = var.cluster_ipv4_cidr
  cluster_resource_labels           = var.cluster_resource_labels
  configure_ip_masq                 = var.configure_ip_masq
  create_service_account            = var.create_service_account
  database_encryption               = var.database_encryption
  default_max_pods_per_node         = var.default_max_pods_per_node
  deploy_using_private_endpoint     = var.deploy_using_private_endpoint
  description                       = var.description
  disable_legacy_metadata_endpoints = var.disable_legacy_metadata_endpoints
  enable_binary_authorization       = var.enable_binary_authorization
  enable_intranode_visibility       = var.enable_intranode_visibility
  enable_private_endpoint           = var.enable_private_endpoint
  enable_private_nodes              = var.enable_private_nodes
  enable_vertical_pod_autoscaling   = var.enable_vertical_pod_autoscaling
  grant_registry_access             = var.grant_registry_access
  horizontal_pod_autoscaling        = var.horizontal_pod_autoscaling
  http_load_balancing               = var.http_load_balancing
  identity_namespace                = var.identity_namespace
  initial_node_count                = var.initial_node_count
  ip_masq_link_local                = var.ip_masq_link_local
  ip_masq_resync_interval           = var.ip_masq_resync_interval
  ip_range_pods                     = var.ip_range_pods
  ip_range_services                 = var.ip_range_services
  issue_client_certificate          = var.issue_client_certificate
  istio                             = var.istio
  kubernetes_dashboard              = var.kubernetes_dashboard
  kubernetes_version                = var.kubernetes_version
  logging_service                   = var.logging_service
  maintenance_start_time            = var.maintenance_start_time
  master_authorized_networks_config = var.master_authorized_networks_config
  master_ipv4_cidr_block            = var.master_ipv4_cidr_block
  monitoring_service                = var.monitoring_service
  name                              = var.name
  network                           = var.network
  network_policy                    = var.network_policy
  network_policy_provider           = var.network_policy_provider
  network_project_id                = var.network_project_id
  node_metadata                     = var.node_metadata
  node_pools                        = var.node_pools
  node_pools_labels                 = var.node_pools_labels
  node_pools_metadata               = var.node_pools_metadata
  node_pools_oauth_scopes           = var.node_pools_oauth_scopes
  node_pools_tags                   = var.node_pools_tags
  node_pools_taints                 = var.node_pools_taints
  node_version                      = var.node_version
  non_masquerade_cidrs              = var.non_masquerade_cidrs
  pod_security_policy_config        = var.pod_security_policy_config
  project_id                        = var.project_id
  region                            = var.region
  regional                          = var.regional
  registry_project_id               = var.registry_project_id
  remove_default_node_pool          = var.remove_default_node_pool
  resource_usage_export_dataset_id  = var.resource_usage_export_dataset_id
  sandbox_enabled                   = var.sandbox_enabled
  service_account                   = var.service_account
  skip_provisioners                 = var.skip_provisioners
  stub_domains                      = var.stub_domains
  subnetwork                        = var.subnetwork
  upstream_nameservers              = var.upstream_nameservers
  zones                             = var.zones
}
