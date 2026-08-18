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

module "network_network-connectivity-center" {
  source                  = "terraform-google-modules/network/google//modules/network-connectivity-center"
  version                 = "15.0.0"
  export_psc              = var.export_psc
  hybrid_spokes           = var.hybrid_spokes
  ncc_groups              = var.ncc_groups
  ncc_hub_description     = var.ncc_hub_description
  ncc_hub_labels          = var.ncc_hub_labels
  ncc_hub_name            = var.ncc_hub_name
  ncc_hub_policy_mode     = var.ncc_hub_policy_mode
  ncc_hub_preset_topology = var.ncc_hub_preset_topology
  project_id              = var.project_id
  router_appliance_spokes = var.router_appliance_spokes
  spoke_labels            = var.spoke_labels
  vpc_spokes              = var.vpc_spokes
}
