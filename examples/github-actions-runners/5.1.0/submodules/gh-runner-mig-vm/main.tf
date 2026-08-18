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

module "github-actions-runners_gh-runner-mig-vm" {
  source               = "terraform-google-modules/github-actions-runners/google//modules/gh-runner-mig-vm"
  version              = "5.1.0"
  cooldown_period      = var.cooldown_period
  create_network       = var.create_network
  create_subnetwork    = var.create_subnetwork
  custom_metadata      = var.custom_metadata
  gh_runner_labels     = var.gh_runner_labels
  gh_token             = var.gh_token
  instance_tags        = var.instance_tags
  machine_type         = var.machine_type
  max_replicas         = var.max_replicas
  min_replicas         = var.min_replicas
  network_name         = var.network_name
  project_id           = var.project_id
  region               = var.region
  repo_name            = var.repo_name
  repo_owner           = var.repo_owner
  service_account      = var.service_account
  shutdown_script      = var.shutdown_script
  source_image         = var.source_image
  source_image_family  = var.source_image_family
  source_image_project = var.source_image_project
  startup_script       = var.startup_script
  subnet_ip            = var.subnet_ip
  subnet_name          = var.subnet_name
  subnetwork_project   = var.subnetwork_project
}
