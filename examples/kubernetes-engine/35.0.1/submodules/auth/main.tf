module "kubernetes-engine" {
  source               = "terraform-google-modules/kubernetes-engine/google"
  version              = "35.0.1"
  cluster_name         = var.cluster_name
  location             = var.location
  project_id           = var.project_id
  use_private_endpoint = var.use_private_endpoint
}
