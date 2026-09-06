module "kubernetes-engine" {
  source           = "terraform-google-modules/kubernetes-engine/google"
  version          = "9.2.0"
  attestor-name    = var.attestor-name
  crypto-algorithm = var.crypto-algorithm
  keyring-id       = var.keyring-id
  project_id       = var.project_id
}
