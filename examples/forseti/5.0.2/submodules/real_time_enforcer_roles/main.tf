module "forseti" {
  source  = "terraform-google-modules/forseti/google"
  version = "5.0.2"
  org_id  = var.org_id
  suffix  = var.suffix
}
