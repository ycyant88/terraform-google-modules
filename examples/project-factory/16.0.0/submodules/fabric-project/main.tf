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

module "project-factory_fabric-project" {
  source                    = "terraform-google-modules/project-factory/google//modules/fabric-project"
  version                   = "16.0.0"
  activate_apis             = var.activate_apis
  auto_create_network       = var.auto_create_network
  billing_account           = var.billing_account
  custom_roles              = var.custom_roles
  editors                   = var.editors
  extra_bindings_members    = var.extra_bindings_members
  extra_bindings_roles      = var.extra_bindings_roles
  gce_service_account_roles = var.gce_service_account_roles
  labels                    = var.labels
  lien_reason               = var.lien_reason
  name                      = var.name
  oslogin                   = var.oslogin
  oslogin_admins            = var.oslogin_admins
  oslogin_users             = var.oslogin_users
  owners                    = var.owners
  parent                    = var.parent
  prefix                    = var.prefix
  viewers                   = var.viewers
}
