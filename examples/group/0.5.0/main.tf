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

module "group" {
  source               = "terraform-google-modules/group/google"
  version              = "0.5.0"
  customer_id          = var.customer_id
  description          = var.description
  display_name         = var.display_name
  domain               = var.domain
  id                   = var.id
  initial_group_config = var.initial_group_config
  managers             = var.managers
  members              = var.members
  owners               = var.owners
}
