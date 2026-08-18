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

module "github-actions-runners_gh-oidc" {
  source                = "terraform-google-modules/github-actions-runners/google//modules/gh-oidc"
  version               = "3.1.0"
  allowed_audiences     = var.allowed_audiences
  attribute_condition   = var.attribute_condition
  attribute_mapping     = var.attribute_mapping
  issuer_uri            = var.issuer_uri
  pool_description      = var.pool_description
  pool_display_name     = var.pool_display_name
  pool_id               = var.pool_id
  project_id            = var.project_id
  provider_description  = var.provider_description
  provider_display_name = var.provider_display_name
  provider_id           = var.provider_id
  sa_mapping            = var.sa_mapping
}
