module "vm" {
  source              = "terraform-google-modules/vm/google"
  version             = "7.2.0"
  access_config       = var.access_config
  add_hostname_suffix = var.add_hostname_suffix
  hostname            = var.hostname
  instance_template   = var.instance_template
  network             = var.network
  num_instances       = var.num_instances
  region              = var.region
  static_ips          = var.static_ips
  subnetwork          = var.subnetwork
  subnetwork_project  = var.subnetwork_project
  zone                = var.zone
}
