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

module "cloud-operations_ops-agent-policy" {
  source          = "terraform-google-modules/cloud-operations/google//modules/ops-agent-policy"
  version         = "0.5.0"
  agents_rule     = var.agents_rule
  assignment_id   = var.assignment_id
  instance_filter = var.instance_filter
  project         = var.project
  zone            = var.zone
}
