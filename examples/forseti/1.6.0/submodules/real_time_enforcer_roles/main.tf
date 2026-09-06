module "forseti" {
  source  = "terraform-google-modules/forseti/google"
  version = "1.6.0"
  org_id  = var.org_id
  suffix  = var.suffix
}
