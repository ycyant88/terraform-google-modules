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

module "forseti_on_gke" {
  source                             = "terraform-google-modules/forseti/google//modules/on_gke"
  version                            = "4.0.1"
  forseti_client_service_account     = var.forseti_client_service_account
  forseti_client_vm_ip               = var.forseti_client_vm_ip
  forseti_cloudsql_connection_name   = var.forseti_cloudsql_connection_name
  forseti_server_bucket              = var.forseti_server_bucket
  forseti_server_service_account     = var.forseti_server_service_account
  gke_service_account                = var.gke_service_account
  helm_repository_url                = var.helm_repository_url
  k8s_forseti_namespace              = var.k8s_forseti_namespace
  k8s_forseti_orchestrator_image     = var.k8s_forseti_orchestrator_image
  k8s_forseti_orchestrator_image_tag = var.k8s_forseti_orchestrator_image_tag
  k8s_forseti_server_image           = var.k8s_forseti_server_image
  k8s_forseti_server_image_tag       = var.k8s_forseti_server_image_tag
  k8s_tiller_sa_name                 = var.k8s_tiller_sa_name
  load_balancer                      = var.load_balancer
  network_policy                     = var.network_policy
  production                         = var.production
  project_id                         = var.project_id
  recreate_pods                      = var.recreate_pods
  server_log_level                   = var.server_log_level
}
