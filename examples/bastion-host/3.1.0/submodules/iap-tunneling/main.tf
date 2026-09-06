module "bastion-host" {
  source                     = "terraform-google-modules/bastion-host/google"
  version                    = "3.1.0"
  additional_ports           = var.additional_ports
  fw_name_allow_ssh_from_iap = var.fw_name_allow_ssh_from_iap
  host_project               = var.host_project
  instances                  = var.instances
  members                    = var.members
  network                    = var.network
  network_tags               = var.network_tags
  project                    = var.project
  service_accounts           = var.service_accounts
}
