module "kubernetes-engine" {
  source                      = "terraform-google-modules/kubernetes-engine/google"
  version                     = "12.3.0"
  attestor-name               = var.attestor-name
  crypto-algorithm            = var.crypto-algorithm
  disable_dependent_services  = var.disable_dependent_services
  disable_services_on_destroy = var.disable_services_on_destroy
  keyring-id                  = var.keyring-id
  project_id                  = var.project_id
}
