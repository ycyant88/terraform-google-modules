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
  version                            = "4.3.0"
  config_validator_enabled           = var.config_validator_enabled
  forseti_client_service_account     = var.forseti_client_service_account
  forseti_client_vm_ip               = var.forseti_client_vm_ip
  forseti_cloudsql_connection_name   = var.forseti_cloudsql_connection_name
  forseti_server_bucket              = var.forseti_server_bucket
  forseti_server_service_account     = var.forseti_server_service_account
  git_sync_image                     = var.git_sync_image
  git_sync_image_tag                 = var.git_sync_image_tag
  git_sync_private_ssh_key_file      = var.git_sync_private_ssh_key_file
  git_sync_ssh                       = var.git_sync_ssh
  git_sync_wait                      = var.git_sync_wait
  gke_service_account                = var.gke_service_account
  helm_repository_url                = var.helm_repository_url
  k8s_config_validator_image         = var.k8s_config_validator_image
  k8s_config_validator_image_tag     = var.k8s_config_validator_image_tag
  k8s_forseti_namespace              = var.k8s_forseti_namespace
  k8s_forseti_orchestrator_image     = var.k8s_forseti_orchestrator_image
  k8s_forseti_orchestrator_image_tag = var.k8s_forseti_orchestrator_image_tag
  k8s_forseti_server_image           = var.k8s_forseti_server_image
  k8s_forseti_server_image_tag       = var.k8s_forseti_server_image_tag
  k8s_tiller_sa_name                 = var.k8s_tiller_sa_name
  load_balancer                      = var.load_balancer
  network_policy                     = var.network_policy
  policy_library_repository_branch   = var.policy_library_repository_branch
  policy_library_repository_url      = var.policy_library_repository_url
  production                         = var.production
  project_id                         = var.project_id
  recreate_pods                      = var.recreate_pods
  server_log_level                   = var.server_log_level
}
