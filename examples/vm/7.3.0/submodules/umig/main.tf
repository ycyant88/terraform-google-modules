module "vm" {
  source              = "terraform-google-modules/vm/google"
  version             = "7.3.0"
  access_config       = var.access_config
  additional_networks = var.additional_networks
  hostname            = var.hostname
  instance_template   = var.instance_template
  named_ports         = var.named_ports
  network             = var.network
  num_instances       = var.num_instances
  project_id          = var.project_id
  region              = var.region
  static_ips          = var.static_ips
  subnetwork          = var.subnetwork
  subnetwork_project  = var.subnetwork_project
}
