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

module "jenkins_artifact_storage" {
  source     = "terraform-google-modules/jenkins/google//modules/artifact_storage"
  version    = "1.2.0"
  jobs       = var.jobs
  jobs_count = var.jobs_count
  project_id = var.project_id
}
