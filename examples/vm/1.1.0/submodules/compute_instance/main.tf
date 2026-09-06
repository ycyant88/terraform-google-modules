module "vm" {
  source             = "terraform-google-modules/vm/google"
  version            = "1.1.0"
  hostname           = var.hostname
  instance_template  = var.instance_template
  network            = var.network
  num_instances      = var.num_instances
  static_ips         = var.static_ips
  subnetwork         = var.subnetwork
  subnetwork_project = var.subnetwork_project
}
