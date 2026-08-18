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

module "container-vm_cos-coredns" {
  source                 = "terraform-google-modules/container-vm/google//modules/cos-coredns"
  version                = "1.0.4"
  boot_disk_size         = var.boot_disk_size
  client_cidrs           = var.client_cidrs
  container_image        = var.container_image
  corefile               = var.corefile
  create_firewall_rule   = var.create_firewall_rule
  instance_count         = var.instance_count
  instance_type          = var.instance_type
  labels                 = var.labels
  log_driver             = var.log_driver
  network                = var.network
  network_tag            = var.network_tag
  prefix                 = var.prefix
  project_id             = var.project_id
  region                 = var.region
  scopes                 = var.scopes
  service_account        = var.service_account
  stackdriver_logging    = var.stackdriver_logging
  stackdriver_monitoring = var.stackdriver_monitoring
  subnetwork             = var.subnetwork
  vm_tags                = var.vm_tags
  zone                   = var.zone
}
