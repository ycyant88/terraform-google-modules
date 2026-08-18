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

module "composer_create_environment_v3" {
  source                            = "terraform-google-modules/composer/google//modules/create_environment_v3"
  version                           = "6.2.0"
  airflow_config_overrides          = var.airflow_config_overrides
  cloud_data_lineage_integration    = var.cloud_data_lineage_integration
  composer_env_name                 = var.composer_env_name
  composer_network_attachment_name  = var.composer_network_attachment_name
  composer_service_account          = var.composer_service_account
  create_network_attachment         = var.create_network_attachment
  dag_processor                     = var.dag_processor
  enable_private_builds_only        = var.enable_private_builds_only
  env_variables                     = var.env_variables
  environment_size                  = var.environment_size
  grant_sa_agent_permission         = var.grant_sa_agent_permission
  image_version                     = var.image_version
  kms_key_name                      = var.kms_key_name
  labels                            = var.labels
  maintenance_end_time              = var.maintenance_end_time
  maintenance_recurrence            = var.maintenance_recurrence
  maintenance_start_time            = var.maintenance_start_time
  network                           = var.network
  network_project_id                = var.network_project_id
  project_id                        = var.project_id
  pypi_packages                     = var.pypi_packages
  region                            = var.region
  resilience_mode                   = var.resilience_mode
  scheduled_snapshots_config        = var.scheduled_snapshots_config
  scheduler                         = var.scheduler
  storage_bucket                    = var.storage_bucket
  subnetwork                        = var.subnetwork
  subnetwork_region                 = var.subnetwork_region
  tags                              = var.tags
  task_logs_retention_storage_mode  = var.task_logs_retention_storage_mode
  triggerer                         = var.triggerer
  use_private_environment           = var.use_private_environment
  web_server                        = var.web_server
  web_server_network_access_control = var.web_server_network_access_control
  web_server_plugins_mode           = var.web_server_plugins_mode
  worker                            = var.worker
}
