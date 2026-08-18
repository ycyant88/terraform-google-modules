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

module "composer_create_environment_v2" {
  source                                 = "terraform-google-modules/composer/google//modules/create_environment_v2"
  version                                = "4.1.0"
  airflow_config_overrides               = var.airflow_config_overrides
  cloud_composer_connection_subnetwork   = var.cloud_composer_connection_subnetwork
  cloud_composer_network_ipv4_cidr_block = var.cloud_composer_network_ipv4_cidr_block
  cloud_data_lineage_integration         = var.cloud_data_lineage_integration
  cloud_sql_ipv4_cidr                    = var.cloud_sql_ipv4_cidr
  composer_env_name                      = var.composer_env_name
  composer_service_account               = var.composer_service_account
  enable_ip_masq_agent                   = var.enable_ip_masq_agent
  enable_private_endpoint                = var.enable_private_endpoint
  env_variables                          = var.env_variables
  environment_size                       = var.environment_size
  grant_sa_agent_permission              = var.grant_sa_agent_permission
  image_version                          = var.image_version
  labels                                 = var.labels
  maintenance_end_time                   = var.maintenance_end_time
  maintenance_recurrence                 = var.maintenance_recurrence
  maintenance_start_time                 = var.maintenance_start_time
  master_authorized_networks             = var.master_authorized_networks
  master_ipv4_cidr                       = var.master_ipv4_cidr
  network                                = var.network
  network_project_id                     = var.network_project_id
  pod_ip_allocation_range_name           = var.pod_ip_allocation_range_name
  project_id                             = var.project_id
  pypi_packages                          = var.pypi_packages
  region                                 = var.region
  resilience_mode                        = var.resilience_mode
  scheduled_snapshots_config             = var.scheduled_snapshots_config
  scheduler                              = var.scheduler
  service_ip_allocation_range_name       = var.service_ip_allocation_range_name
  storage_bucket                         = var.storage_bucket
  subnetwork                             = var.subnetwork
  subnetwork_region                      = var.subnetwork_region
  tags                                   = var.tags
  triggerer                              = var.triggerer
  use_private_environment                = var.use_private_environment
  web_server                             = var.web_server
  web_server_network_access_control      = var.web_server_network_access_control
  worker                                 = var.worker
}
