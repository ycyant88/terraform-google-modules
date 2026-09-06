module "dataflow" {
  source        = "terraform-google-modules/dataflow/google"
  version       = "3.0.2"
  force_destroy = var.force_destroy
  name          = var.name
  project_id    = var.project_id
  region        = var.region
}
