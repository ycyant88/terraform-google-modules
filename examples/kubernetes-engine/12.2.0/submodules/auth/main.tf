module "kubernetes-engine" {
  source       = "terraform-google-modules/kubernetes-engine/google"
  version      = "12.2.0"
  cluster_name = var.cluster_name
  location     = var.location
  project_id   = var.project_id
}
