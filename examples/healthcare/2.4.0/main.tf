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

module "healthcare" {
  source         = "terraform-google-modules/healthcare/google"
  version        = "2.4.0"
  consent_stores = var.consent_stores
  dicom_stores   = var.dicom_stores
  fhir_stores    = var.fhir_stores
  hl7_v2_stores  = var.hl7_v2_stores
  iam_members    = var.iam_members
  location       = var.location
  name           = var.name
  project        = var.project
  time_zone      = var.time_zone
}
