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
  source                     = "terraform-google-modules/kubernetes-engine/google"
  version                    = "0.1.0"
  description                = var.description
  horizontal_pod_autoscaling = var.horizontal_pod_autoscaling
  http_load_balancing        = var.http_load_balancing
  ip_masq_link_local         = var.ip_masq_link_local
  ip_masq_resync_interval    = var.ip_masq_resync_interval
  ip_range_pods              = var.ip_range_pods
  ip_range_services          = var.ip_range_services
  kubernetes_dashboard       = var.kubernetes_dashboard
  kubernetes_version         = var.kubernetes_version
  maintenance_start_time     = var.maintenance_start_time
  name                       = var.name
  network                    = var.network
  network_policy             = var.network_policy
  network_project_id         = var.network_project_id
  node_pools                 = var.node_pools
  node_pools_labels          = var.node_pools_labels
  node_pools_tags            = var.node_pools_tags
  node_pools_taints          = var.node_pools_taints
  node_version               = var.node_version
  non_masquerade_cidrs       = var.non_masquerade_cidrs
  project_id                 = var.project_id
  region                     = var.region
  regional                   = var.regional
  stub_domains               = var.stub_domains
  subnetwork                 = var.subnetwork
  zones                      = var.zones
}
