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

module "composer_create_environment_v1" {
  source                           = "terraform-google-modules/composer/google//modules/create_environment_v1"
  version                          = "3.1.0"
  airflow_config_overrides         = var.airflow_config_overrides
  cloud_sql_ipv4_cidr              = var.cloud_sql_ipv4_cidr
  composer_env_name                = var.composer_env_name
  composer_service_account         = var.composer_service_account
  disk_size                        = var.disk_size
  enable_private_endpoint          = var.enable_private_endpoint
  env_variables                    = var.env_variables
  image_version                    = var.image_version
  kms_key_name                     = var.kms_key_name
  labels                           = var.labels
  machine_type                     = var.machine_type
  master_ipv4_cidr                 = var.master_ipv4_cidr
  network                          = var.network
  network_project_id               = var.network_project_id
  node_count                       = var.node_count
  oauth_scopes                     = var.oauth_scopes
  pod_ip_allocation_range_name     = var.pod_ip_allocation_range_name
  project_id                       = var.project_id
  pypi_packages                    = var.pypi_packages
  python_version                   = var.python_version
  region                           = var.region
  service_ip_allocation_range_name = var.service_ip_allocation_range_name
  subnetwork                       = var.subnetwork
  subnetwork_region                = var.subnetwork_region
  tags                             = var.tags
  use_ip_aliases                   = var.use_ip_aliases
  web_server_allowed_ip_ranges     = var.web_server_allowed_ip_ranges
  web_server_ipv4_cidr             = var.web_server_ipv4_cidr
  zone                             = var.zone
}
