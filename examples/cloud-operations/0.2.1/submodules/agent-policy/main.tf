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

module "cloud-operations_agent-policy" {
  source       = "terraform-google-modules/cloud-operations/google//modules/agent-policy"
  version      = "0.2.1"
  agent_rules  = var.agent_rules
  description  = var.description
  group_labels = var.group_labels
  instances    = var.instances
  os_types     = var.os_types
  policy_id    = var.policy_id
  project_id   = var.project_id
  zones        = var.zones
}
