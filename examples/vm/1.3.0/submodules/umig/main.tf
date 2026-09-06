module "vm" {
  source             = "terraform-google-modules/vm/google"
  version            = "1.3.0"
  hostname           = var.hostname
  instance_template  = var.instance_template
  named_ports        = var.named_ports
  network            = var.network
  num_instances      = var.num_instances
  project_id         = var.project_id
  static_ips         = var.static_ips
  subnetwork         = var.subnetwork
  subnetwork_project = var.subnetwork_project
}
