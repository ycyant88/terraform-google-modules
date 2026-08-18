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

module "kubernetes-engine_beta-autopilot-private-cluster" {
  source                             = "terraform-google-modules/kubernetes-engine/google//modules/beta-autopilot-private-cluster"
  version                            = "28.0.0"
  add_cluster_firewall_rules         = var.add_cluster_firewall_rules
  add_master_webhook_firewall_rules  = var.add_master_webhook_firewall_rules
  add_shadow_firewall_rules          = var.add_shadow_firewall_rules
  authenticator_security_group       = var.authenticator_security_group
  cluster_ipv4_cidr                  = var.cluster_ipv4_cidr
  cluster_resource_labels            = var.cluster_resource_labels
  configure_ip_masq                  = var.configure_ip_masq
  create_service_account             = var.create_service_account
  database_encryption                = var.database_encryption
  deploy_using_private_endpoint      = var.deploy_using_private_endpoint
  description                        = var.description
  disable_default_snat               = var.disable_default_snat
  dns_cache                          = var.dns_cache
  enable_confidential_nodes          = var.enable_confidential_nodes
  enable_cost_allocation             = var.enable_cost_allocation
  enable_network_egress_export       = var.enable_network_egress_export
  enable_private_endpoint            = var.enable_private_endpoint
  enable_private_nodes               = var.enable_private_nodes
  enable_resource_consumption_export = var.enable_resource_consumption_export
  enable_tpu                         = var.enable_tpu
  enable_vertical_pod_autoscaling    = var.enable_vertical_pod_autoscaling
  firewall_inbound_ports             = var.firewall_inbound_ports
  firewall_priority                  = var.firewall_priority
  gateway_api_channel                = var.gateway_api_channel
  grant_registry_access              = var.grant_registry_access
  horizontal_pod_autoscaling         = var.horizontal_pod_autoscaling
  http_load_balancing                = var.http_load_balancing
  identity_namespace                 = var.identity_namespace
  ip_masq_link_local                 = var.ip_masq_link_local
  ip_masq_resync_interval            = var.ip_masq_resync_interval
  ip_range_pods                      = var.ip_range_pods
  ip_range_services                  = var.ip_range_services
  issue_client_certificate           = var.issue_client_certificate
  kubernetes_version                 = var.kubernetes_version
  maintenance_end_time               = var.maintenance_end_time
  maintenance_exclusions             = var.maintenance_exclusions
  maintenance_recurrence             = var.maintenance_recurrence
  maintenance_start_time             = var.maintenance_start_time
  master_authorized_networks         = var.master_authorized_networks
  master_global_access_enabled       = var.master_global_access_enabled
  master_ipv4_cidr_block             = var.master_ipv4_cidr_block
  name                               = var.name
  network                            = var.network
  network_project_id                 = var.network_project_id
  network_tags                       = var.network_tags
  non_masquerade_cidrs               = var.non_masquerade_cidrs
  notification_config_topic          = var.notification_config_topic
  project_id                         = var.project_id
  region                             = var.region
  regional                           = var.regional
  registry_project_ids               = var.registry_project_ids
  release_channel                    = var.release_channel
  resource_usage_export_dataset_id   = var.resource_usage_export_dataset_id
  service_account                    = var.service_account
  service_account_name               = var.service_account_name
  service_external_ips               = var.service_external_ips
  shadow_firewall_rules_log_config   = var.shadow_firewall_rules_log_config
  shadow_firewall_rules_priority     = var.shadow_firewall_rules_priority
  stub_domains                       = var.stub_domains
  subnetwork                         = var.subnetwork
  timeouts                           = var.timeouts
  upstream_nameservers               = var.upstream_nameservers
  workload_config_audit_mode         = var.workload_config_audit_mode
  workload_vulnerability_mode        = var.workload_vulnerability_mode
  zones                              = var.zones
}
