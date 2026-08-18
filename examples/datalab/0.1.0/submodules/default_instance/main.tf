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

module "datalab_default_instance" {
  source                    = "terraform-google-modules/datalab/google//modules/default_instance"
  version                   = "0.1.0"
  boot_disk_size_gb         = var.boot_disk_size_gb
  create_disk               = var.create_disk
  datalab_console_log_level = var.datalab_console_log_level
  datalab_docker_image      = var.datalab_docker_image
  datalab_enable_backup     = var.datalab_enable_backup
  datalab_enable_swap       = var.datalab_enable_swap
  datalab_idle_timeout      = var.datalab_idle_timeout
  datalab_user_email        = var.datalab_user_email
  existing_disk_name        = var.existing_disk_name
  fluentd_docker_image      = var.fluentd_docker_image
  machine_type              = var.machine_type
  name                      = var.name
  network_name              = var.network_name
  persistent_disk_size_gb   = var.persistent_disk_size_gb
  project_id                = var.project_id
  service_account           = var.service_account
  subnet_name               = var.subnet_name
  zone                      = var.zone
}
