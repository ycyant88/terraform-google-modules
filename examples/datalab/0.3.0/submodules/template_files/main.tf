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

module "datalab_template_files" {
  source                    = "terraform-google-modules/datalab/google//modules/template_files"
  version                   = "0.3.0"
  append_to_startup_script  = var.append_to_startup_script
  cloud_config              = var.cloud_config
  datalab_console_log_level = var.datalab_console_log_level
  datalab_disk_name         = var.datalab_disk_name
  datalab_docker_image      = var.datalab_docker_image
  datalab_enable_backup     = var.datalab_enable_backup
  datalab_enable_swap       = var.datalab_enable_swap
  datalab_idle_timeout      = var.datalab_idle_timeout
  datalab_user_email        = var.datalab_user_email
  fluentd_docker_image      = var.fluentd_docker_image
  gpu_count                 = var.gpu_count
  gpu_device_map            = var.gpu_device_map
}
