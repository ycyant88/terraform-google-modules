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
  source                             = "terraform-google-modules/kubernetes-engine/google"
  version                            = "23.2.0"
  add_cluster_firewall_rules         = var.add_cluster_firewall_rules
  add_master_webhook_firewall_rules  = var.add_master_webhook_firewall_rules
  add_shadow_firewall_rules          = var.add_shadow_firewall_rules
  authenticator_security_group       = var.authenticator_security_group
  cluster_autoscaling                = var.cluster_autoscaling
  cluster_dns_domain                 = var.cluster_dns_domain
  cluster_dns_provider               = var.cluster_dns_provider
  cluster_dns_scope                  = var.cluster_dns_scope
  cluster_ipv4_cidr                  = var.cluster_ipv4_cidr
  cluster_resource_labels            = var.cluster_resource_labels
  configure_ip_masq                  = var.configure_ip_masq
  create_service_account             = var.create_service_account
  database_encryption                = var.database_encryption
  datapath_provider                  = var.datapath_provider
  default_max_pods_per_node          = var.default_max_pods_per_node
  description                        = var.description
  disable_default_snat               = var.disable_default_snat
  disable_legacy_metadata_endpoints  = var.disable_legacy_metadata_endpoints
  dns_cache                          = var.dns_cache
  enable_binary_authorization        = var.enable_binary_authorization
  enable_network_egress_export       = var.enable_network_egress_export
  enable_resource_consumption_export = var.enable_resource_consumption_export
  enable_shielded_nodes              = var.enable_shielded_nodes
  enable_vertical_pod_autoscaling    = var.enable_vertical_pod_autoscaling
  filestore_csi_driver               = var.filestore_csi_driver
  firewall_inbound_ports             = var.firewall_inbound_ports
  firewall_priority                  = var.firewall_priority
  grant_registry_access              = var.grant_registry_access
  horizontal_pod_autoscaling         = var.horizontal_pod_autoscaling
  http_load_balancing                = var.http_load_balancing
  identity_namespace                 = var.identity_namespace
  initial_node_count                 = var.initial_node_count
  ip_masq_link_local                 = var.ip_masq_link_local
  ip_masq_resync_interval            = var.ip_masq_resync_interval
  ip_range_pods                      = var.ip_range_pods
  ip_range_services                  = var.ip_range_services
  issue_client_certificate           = var.issue_client_certificate
  kubernetes_version                 = var.kubernetes_version
  logging_service                    = var.logging_service
  maintenance_end_time               = var.maintenance_end_time
  maintenance_exclusions             = var.maintenance_exclusions
  maintenance_recurrence             = var.maintenance_recurrence
  maintenance_start_time             = var.maintenance_start_time
  master_authorized_networks         = var.master_authorized_networks
  monitoring_service                 = var.monitoring_service
  name                               = var.name
  network                            = var.network
  network_policy                     = var.network_policy
  network_policy_provider            = var.network_policy_provider
  network_project_id                 = var.network_project_id
  node_metadata                      = var.node_metadata
  node_pools                         = var.node_pools
  node_pools_labels                  = var.node_pools_labels
  node_pools_metadata                = var.node_pools_metadata
  node_pools_oauth_scopes            = var.node_pools_oauth_scopes
  node_pools_tags                    = var.node_pools_tags
  node_pools_taints                  = var.node_pools_taints
  non_masquerade_cidrs               = var.non_masquerade_cidrs
  notification_config_topic          = var.notification_config_topic
  project_id                         = var.project_id
  region                             = var.region
  regional                           = var.regional
  registry_project_ids               = var.registry_project_ids
  release_channel                    = var.release_channel
  remove_default_node_pool           = var.remove_default_node_pool
  resource_usage_export_dataset_id   = var.resource_usage_export_dataset_id
  service_account                    = var.service_account
  shadow_firewall_rules_priority     = var.shadow_firewall_rules_priority
  skip_provisioners                  = var.skip_provisioners
  stub_domains                       = var.stub_domains
  subnetwork                         = var.subnetwork
  timeouts                           = var.timeouts
  upstream_nameservers               = var.upstream_nameservers
  windows_node_pools                 = var.windows_node_pools
  zones                              = var.zones
}
