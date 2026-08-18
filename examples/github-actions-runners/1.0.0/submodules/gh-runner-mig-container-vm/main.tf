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

module "github-actions-runners_gh-runner-mig-container-vm" {
  source              = "terraform-google-modules/github-actions-runners/google//modules/gh-runner-mig-container-vm"
  version             = "1.0.0"
  additional_metadata = var.additional_metadata
  cooldown_period     = var.cooldown_period
  create_network      = var.create_network
  dind                = var.dind
  gh_token            = var.gh_token
  image               = var.image
  instance_name       = var.instance_name
  machine_type        = var.machine_type
  network_name        = var.network_name
  project_id          = var.project_id
  region              = var.region
  repo_name           = var.repo_name
  repo_owner          = var.repo_owner
  repo_url            = var.repo_url
  restart_policy      = var.restart_policy
  service_account     = var.service_account
  subnet_ip           = var.subnet_ip
  subnet_name         = var.subnet_name
  subnetwork_project  = var.subnetwork_project
  target_size         = var.target_size
  zone                = var.zone
}
