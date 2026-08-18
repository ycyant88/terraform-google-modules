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

module "bigquery_workflow_polling" {
  source               = "terraform-google-modules/bigquery/google//modules/workflow_polling"
  version              = "10.2.1"
  input_workflow_state = var.input_workflow_state
  workflow_id          = var.workflow_id
}
