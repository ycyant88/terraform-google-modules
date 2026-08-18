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

module "kubernetes-engine_asm" {
  source                    = "terraform-google-modules/kubernetes-engine/google//modules/asm"
  version                   = "26.1.1"
  channel                   = var.channel
  cluster_location          = var.cluster_location
  cluster_name              = var.cluster_name
  create_system_namespace   = var.create_system_namespace
  enable_cni                = var.enable_cni
  enable_fleet_registration = var.enable_fleet_registration
  enable_mesh_feature       = var.enable_mesh_feature
  enable_vpc_sc             = var.enable_vpc_sc
  fleet_id                  = var.fleet_id
  internal_ip               = var.internal_ip
  module_depends_on         = var.module_depends_on
  multicluster_mode         = var.multicluster_mode
  project_id                = var.project_id
}
