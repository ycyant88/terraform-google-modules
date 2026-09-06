module "kubernetes-engine" {
  source              = "terraform-google-modules/kubernetes-engine/google"
  version             = "7.1.0"
  name                = var.name
  namespace           = var.namespace
  project_id          = var.project_id
  use_existing_k8s_sa = var.use_existing_k8s_sa
}
