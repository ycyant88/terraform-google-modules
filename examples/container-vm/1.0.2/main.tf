module "container-vm" {
  source         = "terraform-google-modules/container-vm/google"
  version        = "1.0.2"
  container      = var.container
  restart_policy = var.restart_policy
  volumes        = var.volumes
}
