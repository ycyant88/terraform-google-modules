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

module "vm_mig" {
  source                       = "terraform-google-modules/vm/google//modules/mig"
  version                      = "6.5.0"
  autoscaler_name              = var.autoscaler_name
  autoscaling_cpu              = var.autoscaling_cpu
  autoscaling_enabled          = var.autoscaling_enabled
  autoscaling_lb               = var.autoscaling_lb
  autoscaling_metric           = var.autoscaling_metric
  autoscaling_scale_in_control = var.autoscaling_scale_in_control
  cooldown_period              = var.cooldown_period
  distribution_policy_zones    = var.distribution_policy_zones
  health_check                 = var.health_check
  health_check_name            = var.health_check_name
  hostname                     = var.hostname
  instance_template            = var.instance_template
  max_replicas                 = var.max_replicas
  mig_name                     = var.mig_name
  mig_timeouts                 = var.mig_timeouts
  min_replicas                 = var.min_replicas
  named_ports                  = var.named_ports
  network                      = var.network
  project_id                   = var.project_id
  region                       = var.region
  stateful_disks               = var.stateful_disks
  subnetwork                   = var.subnetwork
  subnetwork_project           = var.subnetwork_project
  target_pools                 = var.target_pools
  target_size                  = var.target_size
  update_policy                = var.update_policy
  wait_for_instances           = var.wait_for_instances
}
