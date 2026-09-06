module "kubernetes-engine" {
  source                   = "terraform-google-modules/kubernetes-engine/google"
  version                  = "14.3.0"
  asm_dir                  = var.asm_dir
  asm_version              = var.asm_version
  cluster_endpoint         = var.cluster_endpoint
  cluster_name             = var.cluster_name
  gcloud_sdk_version       = var.gcloud_sdk_version
  location                 = var.location
  managed                  = var.managed
  project_id               = var.project_id
  service_account_key_file = var.service_account_key_file
}
