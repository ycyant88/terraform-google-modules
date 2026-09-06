module "dataflow" {
  source        = "terraform-google-modules/dataflow/google"
  version       = "2.0.0"
  force_destroy = var.force_destroy
  name          = var.name
  project_id    = var.project_id
  region        = var.region
}
