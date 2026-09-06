module "data-fusion" {
  source                      = "terraform-google-modules/data-fusion/google"
  version                     = "0.1.1"
  data_fusion_service_account = var.data_fusion_service_account
  dataproc_cidr               = var.dataproc_cidr
  dataproc_subnet             = var.dataproc_subnet
  instance                    = var.instance
  network_name                = var.network_name
  project_id                  = var.project_id
  region                      = var.region
  tenant_project              = var.tenant_project
}
