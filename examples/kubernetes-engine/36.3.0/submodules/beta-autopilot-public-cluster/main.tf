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

module "kubernetes-engine_beta-autopilot-public-cluster" {
  source                                   = "terraform-google-modules/kubernetes-engine/google//modules/beta-autopilot-public-cluster"
  version                                  = "36.3.0"
  add_cluster_firewall_rules               = var.add_cluster_firewall_rules
  add_master_webhook_firewall_rules        = var.add_master_webhook_firewall_rules
  add_shadow_firewall_rules                = var.add_shadow_firewall_rules
  additional_ip_range_pods                 = var.additional_ip_range_pods
  allow_net_admin                          = var.allow_net_admin
  authenticator_security_group             = var.authenticator_security_group
  boot_disk_kms_key                        = var.boot_disk_kms_key
  cluster_ipv4_cidr                        = var.cluster_ipv4_cidr
  cluster_resource_labels                  = var.cluster_resource_labels
  configure_ip_masq                        = var.configure_ip_masq
  create_service_account                   = var.create_service_account
  database_encryption                      = var.database_encryption
  deletion_protection                      = var.deletion_protection
  description                              = var.description
  disable_default_snat                     = var.disable_default_snat
  dns_allow_external_traffic               = var.dns_allow_external_traffic
  dns_cache                                = var.dns_cache
  enable_binary_authorization              = var.enable_binary_authorization
  enable_cilium_clusterwide_network_policy = var.enable_cilium_clusterwide_network_policy
  enable_confidential_nodes                = var.enable_confidential_nodes
  enable_cost_allocation                   = var.enable_cost_allocation
  enable_fqdn_network_policy               = var.enable_fqdn_network_policy
  enable_l4_ilb_subsetting                 = var.enable_l4_ilb_subsetting
  enable_network_egress_export             = var.enable_network_egress_export
  enable_resource_consumption_export       = var.enable_resource_consumption_export
  enable_secret_manager_addon              = var.enable_secret_manager_addon
  enable_tpu                               = var.enable_tpu
  enable_vertical_pod_autoscaling          = var.enable_vertical_pod_autoscaling
  enterprise_config                        = var.enterprise_config
  filestore_csi_driver                     = var.filestore_csi_driver
  firewall_inbound_ports                   = var.firewall_inbound_ports
  firewall_priority                        = var.firewall_priority
  fleet_project                            = var.fleet_project
  fleet_project_grant_service_agent        = var.fleet_project_grant_service_agent
  gateway_api_channel                      = var.gateway_api_channel
  gcp_public_cidrs_access_enabled          = var.gcp_public_cidrs_access_enabled
  gke_backup_agent_config                  = var.gke_backup_agent_config
  grant_registry_access                    = var.grant_registry_access
  horizontal_pod_autoscaling               = var.horizontal_pod_autoscaling
  http_load_balancing                      = var.http_load_balancing
  identity_namespace                       = var.identity_namespace
  insecure_kubelet_readonly_port_enabled   = var.insecure_kubelet_readonly_port_enabled
  ip_masq_link_local                       = var.ip_masq_link_local
  ip_masq_resync_interval                  = var.ip_masq_resync_interval
  ip_range_pods                            = var.ip_range_pods
  ip_range_services                        = var.ip_range_services
  issue_client_certificate                 = var.issue_client_certificate
  kubernetes_version                       = var.kubernetes_version
  logging_enabled_components               = var.logging_enabled_components
  maintenance_end_time                     = var.maintenance_end_time
  maintenance_exclusions                   = var.maintenance_exclusions
  maintenance_recurrence                   = var.maintenance_recurrence
  maintenance_start_time                   = var.maintenance_start_time
  master_authorized_networks               = var.master_authorized_networks
  monitoring_enabled_components            = var.monitoring_enabled_components
  monitoring_metric_writer_role            = var.monitoring_metric_writer_role
  name                                     = var.name
  network                                  = var.network
  network_project_id                       = var.network_project_id
  network_tags                             = var.network_tags
  node_pools_cgroup_mode                   = var.node_pools_cgroup_mode
  non_masquerade_cidrs                     = var.non_masquerade_cidrs
  notification_config_topic                = var.notification_config_topic
  notification_filter_event_type           = var.notification_filter_event_type
  project_id                               = var.project_id
  ray_operator_config                      = var.ray_operator_config
  region                                   = var.region
  regional                                 = var.regional
  registry_project_ids                     = var.registry_project_ids
  release_channel                          = var.release_channel
  resource_usage_export_dataset_id         = var.resource_usage_export_dataset_id
  security_posture_mode                    = var.security_posture_mode
  security_posture_vulnerability_mode      = var.security_posture_vulnerability_mode
  service_account                          = var.service_account
  service_account_name                     = var.service_account_name
  service_external_ips                     = var.service_external_ips
  shadow_firewall_rules_log_config         = var.shadow_firewall_rules_log_config
  shadow_firewall_rules_priority           = var.shadow_firewall_rules_priority
  stack_type                               = var.stack_type
  stateful_ha                              = var.stateful_ha
  subnetwork                               = var.subnetwork
  timeouts                                 = var.timeouts
  workload_config_audit_mode               = var.workload_config_audit_mode
  workload_vulnerability_mode              = var.workload_vulnerability_mode
  zones                                    = var.zones
}
