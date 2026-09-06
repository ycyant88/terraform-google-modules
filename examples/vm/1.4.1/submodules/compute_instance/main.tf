module "vm" {
  source             = "terraform-google-modules/vm/google"
  version            = "1.4.1"
  hostname           = var.hostname
  instance_template  = var.instance_template
  network            = var.network
  num_instances      = var.num_instances
  region             = var.region
  static_ips         = var.static_ips
  subnetwork         = var.subnetwork
  subnetwork_project = var.subnetwork_project
}
