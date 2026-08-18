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

module "gke-gitlab" {
  source                      = "terraform-google-modules/gke-gitlab/google"
  version                     = "2.0.0"
  allow_force_destroy         = var.allow_force_destroy
  certmanager_email           = var.certmanager_email
  domain                      = var.domain
  gitlab_address_name         = var.gitlab_address_name
  gitlab_db_name              = var.gitlab_db_name
  gitlab_db_password          = var.gitlab_db_password
  gitlab_db_random_prefix     = var.gitlab_db_random_prefix
  gitlab_deletion_protection  = var.gitlab_deletion_protection
  gitlab_nodes_subnet_cidr    = var.gitlab_nodes_subnet_cidr
  gitlab_pods_subnet_cidr     = var.gitlab_pods_subnet_cidr
  gitlab_runner_install       = var.gitlab_runner_install
  gitlab_services_subnet_cidr = var.gitlab_services_subnet_cidr
  gke_machine_type            = var.gke_machine_type
  gke_version                 = var.gke_version
  helm_chart_version          = var.helm_chart_version
  project_id                  = var.project_id
  region                      = var.region
}
