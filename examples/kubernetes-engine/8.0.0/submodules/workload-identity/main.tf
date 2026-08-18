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

module "kubernetes-engine_workload-identity" {
  source              = "terraform-google-modules/kubernetes-engine/google//modules/workload-identity"
  version             = "8.0.0"
  k8s_sa_name         = var.k8s_sa_name
  name                = var.name
  namespace           = var.namespace
  project_id          = var.project_id
  use_existing_k8s_sa = var.use_existing_k8s_sa
}
