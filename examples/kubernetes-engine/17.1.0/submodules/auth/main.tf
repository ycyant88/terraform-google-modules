module "kubernetes-engine" {
  source               = "terraform-google-modules/kubernetes-engine/google"
  version              = "17.1.0"
  cluster_name         = var.cluster_name
  location             = var.location
  project_id           = var.project_id
  use_private_endpoint = var.use_private_endpoint
}
