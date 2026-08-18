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

module "kubernetes-engine_gke-node-pool" {
  source              = "terraform-google-modules/kubernetes-engine/google//modules/gke-node-pool"
  version             = "44.2.0"
  autoscaling         = var.autoscaling
  cluster             = var.cluster
  initial_node_count  = var.initial_node_count
  kubernetes_version  = var.kubernetes_version
  location            = var.location
  management          = var.management
  max_pods_per_node   = var.max_pods_per_node
  name                = var.name
  name_prefix         = var.name_prefix
  network_config      = var.network_config
  node_config         = var.node_config
  node_count          = var.node_count
  node_locations      = var.node_locations
  placement_policy    = var.placement_policy
  project_id          = var.project_id
  queued_provisioning = var.queued_provisioning
  timeouts            = var.timeouts
  upgrade_settings    = var.upgrade_settings
}
