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
  source                          = "terraform-google-modules/kubernetes-engine/google//modules/workload-identity"
  version                         = "11.0.0"
  automount_service_account_token = var.automount_service_account_token
  cluster_name                    = var.cluster_name
  k8s_sa_name                     = var.k8s_sa_name
  location                        = var.location
  name                            = var.name
  namespace                       = var.namespace
  project_id                      = var.project_id
  use_existing_k8s_sa             = var.use_existing_k8s_sa
}
