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

module "vm_preemptible_and_regular_instance_templates" {
  source               = "terraform-google-modules/vm/google//modules/preemptible_and_regular_instance_templates"
  version              = "6.5.0"
  access_config        = var.access_config
  additional_disks     = var.additional_disks
  auto_delete          = var.auto_delete
  can_ip_forward       = var.can_ip_forward
  disk_size_gb         = var.disk_size_gb
  disk_type            = var.disk_type
  labels               = var.labels
  machine_type         = var.machine_type
  metadata             = var.metadata
  name_prefix          = var.name_prefix
  network              = var.network
  project_id           = var.project_id
  service_account      = var.service_account
  source_image         = var.source_image
  source_image_family  = var.source_image_family
  source_image_project = var.source_image_project
  startup_script       = var.startup_script
  subnetwork           = var.subnetwork
  subnetwork_project   = var.subnetwork_project
  tags                 = var.tags
}
