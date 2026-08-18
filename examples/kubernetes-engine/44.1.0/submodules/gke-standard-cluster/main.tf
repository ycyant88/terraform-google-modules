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

module "kubernetes-engine_gke-standard-cluster" {
  source                                   = "terraform-google-modules/kubernetes-engine/google//modules/gke-standard-cluster"
  version                                  = "44.1.0"
  addons_config                            = var.addons_config
  authenticator_groups_config              = var.authenticator_groups_config
  binary_authorization                     = var.binary_authorization
  cluster_autoscaling                      = var.cluster_autoscaling
  cluster_ipv4_cidr                        = var.cluster_ipv4_cidr
  cluster_telemetry                        = var.cluster_telemetry
  confidential_nodes                       = var.confidential_nodes
  control_plane_endpoints_config           = var.control_plane_endpoints_config
  cost_management_config                   = var.cost_management_config
  database_encryption                      = var.database_encryption
  datapath_provider                        = var.datapath_provider
  default_max_pods_per_node                = var.default_max_pods_per_node
  default_snat_status                      = var.default_snat_status
  deletion_protection                      = var.deletion_protection
  description                              = var.description
  disable_l4_lb_firewall_reconciliation    = var.disable_l4_lb_firewall_reconciliation
  dns_config                               = var.dns_config
  enable_cilium_clusterwide_network_policy = var.enable_cilium_clusterwide_network_policy
  enable_fqdn_network_policy               = var.enable_fqdn_network_policy
  enable_intranode_visibility              = var.enable_intranode_visibility
  enable_k8s_beta_apis                     = var.enable_k8s_beta_apis
  enable_kubernetes_alpha                  = var.enable_kubernetes_alpha
  enable_l4_ilb_subsetting                 = var.enable_l4_ilb_subsetting
  enable_legacy_abac                       = var.enable_legacy_abac
  enable_multi_networking                  = var.enable_multi_networking
  enable_shielded_nodes                    = var.enable_shielded_nodes
  enable_tpu                               = var.enable_tpu
  enterprise_config                        = var.enterprise_config
  fleet                                    = var.fleet
  gateway_api_config                       = var.gateway_api_config
  identity_service_config                  = var.identity_service_config
  in_transit_encryption_config             = var.in_transit_encryption_config
  initial_node_count                       = var.initial_node_count
  ip_allocation_policy                     = var.ip_allocation_policy
  location                                 = var.location
  logging_config                           = var.logging_config
  logging_service                          = var.logging_service
  maintenance_policy                       = var.maintenance_policy
  master_auth                              = var.master_auth
  master_authorized_networks_config        = var.master_authorized_networks_config
  mesh_certificates                        = var.mesh_certificates
  min_master_version                       = var.min_master_version
  monitoring_config                        = var.monitoring_config
  monitoring_service                       = var.monitoring_service
  name                                     = var.name
  network                                  = var.network
  network_policy                           = var.network_policy
  node_config                              = var.node_config
  node_locations                           = var.node_locations
  node_pool                                = var.node_pool
  node_pool_auto_config                    = var.node_pool_auto_config
  node_pool_defaults                       = var.node_pool_defaults
  node_version                             = var.node_version
  notification_config                      = var.notification_config
  pod_autoscaling                          = var.pod_autoscaling
  pod_security_policy_config               = var.pod_security_policy_config
  private_cluster_config                   = var.private_cluster_config
  private_ipv6_google_access               = var.private_ipv6_google_access
  project_id                               = var.project_id
  protect_config                           = var.protect_config
  release_channel                          = var.release_channel
  remove_default_node_pool                 = var.remove_default_node_pool
  resource_labels                          = var.resource_labels
  resource_usage_export_config             = var.resource_usage_export_config
  secret_manager_config                    = var.secret_manager_config
  security_posture_config                  = var.security_posture_config
  service_external_ips_config              = var.service_external_ips_config
  subnetwork                               = var.subnetwork
  timeouts                                 = var.timeouts
  vertical_pod_autoscaling                 = var.vertical_pod_autoscaling
  workload_alts_config                     = var.workload_alts_config
  workload_identity_config                 = var.workload_identity_config
}
