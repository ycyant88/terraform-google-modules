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

module "github-actions-runners_gh-runner-gke" {
  source                         = "terraform-google-modules/github-actions-runners/google//modules/gh-runner-gke"
  version                        = "4.0.0"
  arc_container_mode             = var.arc_container_mode
  arc_controller_values          = var.arc_controller_values
  arc_controller_version         = var.arc_controller_version
  arc_runners_namespace          = var.arc_runners_namespace
  arc_runners_values             = var.arc_runners_values
  arc_runners_version            = var.arc_runners_version
  arc_systems_namespace          = var.arc_systems_namespace
  cluster_suffix                 = var.cluster_suffix
  create_network                 = var.create_network
  gh_app_id                      = var.gh_app_id
  gh_app_installation_id         = var.gh_app_installation_id
  gh_app_pre_defined_secret_name = var.gh_app_pre_defined_secret_name
  gh_app_private_key             = var.gh_app_private_key
  gh_config_url                  = var.gh_config_url
  ip_range_pods_cidr             = var.ip_range_pods_cidr
  ip_range_pods_name             = var.ip_range_pods_name
  ip_range_services_cider        = var.ip_range_services_cider
  ip_range_services_name         = var.ip_range_services_name
  machine_type                   = var.machine_type
  max_node_count                 = var.max_node_count
  min_node_count                 = var.min_node_count
  network_name                   = var.network_name
  project_id                     = var.project_id
  region                         = var.region
  service_account                = var.service_account
  subnet_ip                      = var.subnet_ip
  subnet_name                    = var.subnet_name
  subnetwork_project             = var.subnetwork_project
  zones                          = var.zones
}
