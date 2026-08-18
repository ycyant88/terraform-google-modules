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
  source                              = "terraform-google-modules/kubernetes-engine/google//modules/workload-identity"
  version                             = "44.1.0"
  additional_projects                 = var.additional_projects
  annotate_k8s_sa                     = var.annotate_k8s_sa
  automount_service_account_token     = var.automount_service_account_token
  cluster_name                        = var.cluster_name
  gcp_sa_create_ignore_already_exists = var.gcp_sa_create_ignore_already_exists
  gcp_sa_description                  = var.gcp_sa_description
  gcp_sa_display_name                 = var.gcp_sa_display_name
  gcp_sa_name                         = var.gcp_sa_name
  image_pull_secrets                  = var.image_pull_secrets
  impersonate_service_account         = var.impersonate_service_account
  k8s_sa_name                         = var.k8s_sa_name
  k8s_sa_project_id                   = var.k8s_sa_project_id
  location                            = var.location
  module_depends_on                   = var.module_depends_on
  name                                = var.name
  namespace                           = var.namespace
  project_id                          = var.project_id
  roles                               = var.roles
  use_existing_context                = var.use_existing_context
  use_existing_gcp_sa                 = var.use_existing_gcp_sa
  use_existing_k8s_sa                 = var.use_existing_k8s_sa
}
