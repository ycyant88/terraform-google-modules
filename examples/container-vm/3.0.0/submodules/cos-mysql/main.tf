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

module "container-vm_cos-mysql" {
  source                 = "terraform-google-modules/container-vm/google//modules/cos-mysql"
  version                = "3.0.0"
  boot_disk_size         = var.boot_disk_size
  client_cidrs           = var.client_cidrs
  container_image        = var.container_image
  create_firewall_rule   = var.create_firewall_rule
  data_disk_size         = var.data_disk_size
  data_disk_type         = var.data_disk_type
  host_project_id        = var.host_project_id
  instance_count         = var.instance_count
  instance_type          = var.instance_type
  kms_data               = var.kms_data
  labels                 = var.labels
  log_driver             = var.log_driver
  my_cnf                 = var.my_cnf
  mysql_port             = var.mysql_port
  network                = var.network
  network_tag            = var.network_tag
  password               = var.password
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
