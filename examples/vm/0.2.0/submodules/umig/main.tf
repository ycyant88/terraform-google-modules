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
  source             = "terraform-google-modules/vm/google//modules/umig"
  version            = "0.2.0"
  hostname           = var.hostname
  instance_template  = var.instance_template
  named_ports        = var.named_ports
  network            = var.network
  num_instances      = var.num_instances
  static_ips         = var.static_ips
  subnetwork         = var.subnetwork
  subnetwork_project = var.subnetwork_project
}
