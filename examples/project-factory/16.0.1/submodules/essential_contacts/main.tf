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

module "project-factory_essential_contacts" {
  source             = "terraform-google-modules/project-factory/google//modules/essential_contacts"
  version            = "16.0.1"
  essential_contacts = var.essential_contacts
  language_tag       = var.language_tag
  project_id         = var.project_id
}
