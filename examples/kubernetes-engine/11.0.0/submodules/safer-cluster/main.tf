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

module "kubernetes-engine_safer-cluster" {
  source                             = "terraform-google-modules/kubernetes-engine/google//modules/safer-cluster"
  version                            = "11.0.0"
  add_cluster_firewall_rules         = var.add_cluster_firewall_rules
  authenticator_security_group       = var.authenticator_security_group
  cloudrun                           = var.cloudrun
  cluster_resource_labels            = var.cluster_resource_labels
  compute_engine_service_account     = var.compute_engine_service_account
  config_connector                   = var.config_connector
  database_encryption                = var.database_encryption
  default_max_pods_per_node          = var.default_max_pods_per_node
  description                        = var.description
  dns_cache                          = var.dns_cache
  enable_intranode_visibility        = var.enable_intranode_visibility
  enable_network_egress_export       = var.enable_network_egress_export
  enable_pod_security_policy         = var.enable_pod_security_policy
  enable_private_endpoint            = var.enable_private_endpoint
  enable_resource_consumption_export = var.enable_resource_consumption_export
  enable_shielded_nodes              = var.enable_shielded_nodes
  enable_vertical_pod_autoscaling    = var.enable_vertical_pod_autoscaling
  firewall_inbound_ports             = var.firewall_inbound_ports
  firewall_priority                  = var.firewall_priority
  gce_pd_csi_driver                  = var.gce_pd_csi_driver
  grant_registry_access              = var.grant_registry_access
  horizontal_pod_autoscaling         = var.horizontal_pod_autoscaling
  http_load_balancing                = var.http_load_balancing
  initial_node_count                 = var.initial_node_count
  ip_range_pods                      = var.ip_range_pods
  ip_range_services                  = var.ip_range_services
  istio                              = var.istio
  istio_auth                         = var.istio_auth
  kubernetes_version                 = var.kubernetes_version
  logging_service                    = var.logging_service
  maintenance_start_time             = var.maintenance_start_time
  master_authorized_networks         = var.master_authorized_networks
  master_ipv4_cidr_block             = var.master_ipv4_cidr_block
  monitoring_service                 = var.monitoring_service
  name                               = var.name
  network                            = var.network
  network_project_id                 = var.network_project_id
  node_pools                         = var.node_pools
  node_pools_labels                  = var.node_pools_labels
  node_pools_metadata                = var.node_pools_metadata
  node_pools_oauth_scopes            = var.node_pools_oauth_scopes
  node_pools_tags                    = var.node_pools_tags
  node_pools_taints                  = var.node_pools_taints
  project_id                         = var.project_id
  region                             = var.region
  regional                           = var.regional
  registry_project_id                = var.registry_project_id
  release_channel                    = var.release_channel
  resource_usage_export_dataset_id   = var.resource_usage_export_dataset_id
  sandbox_enabled                    = var.sandbox_enabled
  skip_provisioners                  = var.skip_provisioners
  stub_domains                       = var.stub_domains
  subnetwork                         = var.subnetwork
  upstream_nameservers               = var.upstream_nameservers
  zones                              = var.zones
}
