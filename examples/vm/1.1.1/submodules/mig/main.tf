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
  source                    = "terraform-google-modules/vm/google//modules/mig"
  version                   = "1.1.1"
  autoscaling_cpu           = var.autoscaling_cpu
  autoscaling_enabled       = var.autoscaling_enabled
  autoscaling_lb            = var.autoscaling_lb
  autoscaling_metric        = var.autoscaling_metric
  cooldown_period           = var.cooldown_period
  distribution_policy_zones = var.distribution_policy_zones
  hc_healthy_threshold      = var.hc_healthy_threshold
  hc_initial_delay_sec      = var.hc_initial_delay_sec
  hc_interval_sec           = var.hc_interval_sec
  hc_path                   = var.hc_path
  hc_port                   = var.hc_port
  hc_timeout_sec            = var.hc_timeout_sec
  hc_unhealthy_threshold    = var.hc_unhealthy_threshold
  hostname                  = var.hostname
  http_healthcheck_enable   = var.http_healthcheck_enable
  instance_template         = var.instance_template
  max_replicas              = var.max_replicas
  min_replicas              = var.min_replicas
  named_ports               = var.named_ports
  network                   = var.network
  project_id                = var.project_id
  region                    = var.region
  subnetwork                = var.subnetwork
  subnetwork_project        = var.subnetwork_project
  target_pools              = var.target_pools
  target_size               = var.target_size
  tcp_healthcheck_enable    = var.tcp_healthcheck_enable
  update_policy             = var.update_policy
}
