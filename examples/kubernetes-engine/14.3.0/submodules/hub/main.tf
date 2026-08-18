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

module "kubernetes-engine_hub" {
  source                            = "terraform-google-modules/kubernetes-engine/google//modules/hub"
  version                           = "14.3.0"
  cluster_endpoint                  = var.cluster_endpoint
  cluster_name                      = var.cluster_name
  enable_gke_hub_registration       = var.enable_gke_hub_registration
  gcloud_sdk_version                = var.gcloud_sdk_version
  gke_hub_membership_name           = var.gke_hub_membership_name
  gke_hub_sa_name                   = var.gke_hub_sa_name
  hub_project_id                    = var.hub_project_id
  labels                            = var.labels
  location                          = var.location
  module_depends_on                 = var.module_depends_on
  project_id                        = var.project_id
  sa_private_key                    = var.sa_private_key
  use_existing_sa                   = var.use_existing_sa
  use_kubeconfig                    = var.use_kubeconfig
  use_tf_google_credentials_env_var = var.use_tf_google_credentials_env_var
}
