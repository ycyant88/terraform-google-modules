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

module "vm_compute_instance" {
  source                    = "terraform-google-modules/vm/google//modules/compute_instance"
  version                   = "12.1.2"
  access_config             = var.access_config
  add_hostname_suffix       = var.add_hostname_suffix
  alias_ip_ranges           = var.alias_ip_ranges
  deletion_protection       = var.deletion_protection
  hostname                  = var.hostname
  hostname_suffix_separator = var.hostname_suffix_separator
  instance_template         = var.instance_template
  ipv6_access_config        = var.ipv6_access_config
  labels                    = var.labels
  network                   = var.network
  num_instances             = var.num_instances
  region                    = var.region
  resource_manager_tags     = var.resource_manager_tags
  resource_policies         = var.resource_policies
  static_ips                = var.static_ips
  subnetwork                = var.subnetwork
  subnetwork_project        = var.subnetwork_project
  zone                      = var.zone
}
