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

module "service-accounts" {
  source             = "terraform-google-modules/service-accounts/google"
  version            = "3.0.1"
  billing_account_id = var.billing_account_id
  description        = var.description
  display_name       = var.display_name
  generate_keys      = var.generate_keys
  grant_billing_role = var.grant_billing_role
  grant_xpn_roles    = var.grant_xpn_roles
  names              = var.names
  org_id             = var.org_id
  prefix             = var.prefix
  project_id         = var.project_id
  project_roles      = var.project_roles
}
