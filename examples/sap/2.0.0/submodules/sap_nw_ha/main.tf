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

module "sap_sap_nw_ha" {
  source                     = "terraform-google-modules/sap/google//modules/sap_nw_ha"
  version                    = "2.0.0"
  can_ip_forward             = var.can_ip_forward
  custom_primary_metadata    = var.custom_primary_metadata
  custom_secondary_metadata  = var.custom_secondary_metadata
  ers_backend_svc_name       = var.ers_backend_svc_name
  ers_forw_rule_name         = var.ers_forw_rule_name
  ers_hc_name                = var.ers_hc_name
  ers_hc_port                = var.ers_hc_port
  ers_inst_group_name        = var.ers_inst_group_name
  ers_vip_address            = var.ers_vip_address
  ers_vip_name               = var.ers_vip_name
  hc_firewall_rule_name      = var.hc_firewall_rule_name
  hc_network_tag             = var.hc_network_tag
  linux_image                = var.linux_image
  linux_image_project        = var.linux_image_project
  machine_type               = var.machine_type
  network                    = var.network
  network_tags               = var.network_tags
  nfs_path                   = var.nfs_path
  pacemaker_cluster_name     = var.pacemaker_cluster_name
  post_deployment_script     = var.post_deployment_script
  primary_reservation_name   = var.primary_reservation_name
  primary_startup_url        = var.primary_startup_url
  project_id                 = var.project_id
  public_ip                  = var.public_ip
  sap_deployment_debug       = var.sap_deployment_debug
  sap_ers_instance_number    = var.sap_ers_instance_number
  sap_nw_abap                = var.sap_nw_abap
  sap_primary_instance       = var.sap_primary_instance
  sap_primary_zone           = var.sap_primary_zone
  sap_scs_instance_number    = var.sap_scs_instance_number
  sap_secondary_instance     = var.sap_secondary_instance
  sap_secondary_zone         = var.sap_secondary_zone
  sap_sid                    = var.sap_sid
  scs_backend_svc_name       = var.scs_backend_svc_name
  scs_forw_rule_name         = var.scs_forw_rule_name
  scs_hc_name                = var.scs_hc_name
  scs_hc_port                = var.scs_hc_port
  scs_inst_group_name        = var.scs_inst_group_name
  scs_vip_address            = var.scs_vip_address
  scs_vip_name               = var.scs_vip_name
  secondary_reservation_name = var.secondary_reservation_name
  secondary_startup_url      = var.secondary_startup_url
  service_account            = var.service_account
  subnetwork                 = var.subnetwork
  swap_size                  = var.swap_size
  usr_sap_size               = var.usr_sap_size
}
