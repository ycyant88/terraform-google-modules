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

module "iam_audit_config" {
  source           = "terraform-google-modules/iam/google//modules/audit_config"
  version          = "7.2.0"
  audit_log_config = var.audit_log_config
  project          = var.project
}
