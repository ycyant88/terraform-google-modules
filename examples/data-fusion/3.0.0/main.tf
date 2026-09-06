module "data-fusion" {
  source             = "terraform-google-modules/data-fusion/google"
  version            = "3.0.0"
  datafusion_version = var.datafusion_version
  dataproc_subnet    = var.dataproc_subnet
  description        = var.description
  labels             = var.labels
  name               = var.name
  network            = var.network
  options            = var.options
  project            = var.project
  region             = var.region
  type               = var.type
}
