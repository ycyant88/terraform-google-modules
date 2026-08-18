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

module "vm_umig" {
  source                    = "terraform-google-modules/vm/google//modules/umig"
  version                   = "14.3.1"
  access_config             = var.access_config
  additional_networks       = var.additional_networks
  hostname                  = var.hostname
  hostname_suffix_separator = var.hostname_suffix_separator
  instance_template         = var.instance_template
  ipv6_access_config        = var.ipv6_access_config
  named_ports               = var.named_ports
  network                   = var.network
  num_instances             = var.num_instances
  project_id                = var.project_id
  region                    = var.region
  static_ips                = var.static_ips
  subnetwork                = var.subnetwork
  subnetwork_project        = var.subnetwork_project
  zones                     = var.zones
}
