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

module "sap_sap_hana_python" {
  source        = "terraform-google-modules/sap/google//modules/sap_hana_python"
  version       = "0.1.0"
  instance-type = var.instance-type
}
