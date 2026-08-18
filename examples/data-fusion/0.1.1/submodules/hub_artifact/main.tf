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

module "data-fusion_hub_artifact" {
  source           = "terraform-google-modules/data-fusion/google//modules/hub_artifact"
  version          = "0.1.1"
  artifact_version = var.artifact_version
  bucket           = var.bucket
  name             = var.name
  namespace        = var.namespace
  package          = var.package
  package_version  = var.package_version
}
