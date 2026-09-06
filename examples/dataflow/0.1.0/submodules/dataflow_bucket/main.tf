module "dataflow" {
  source     = "terraform-google-modules/dataflow/google"
  version    = "0.1.0"
  name       = var.name
  project_id = var.project_id
  region     = var.region
}
