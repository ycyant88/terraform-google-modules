module "forseti" {
  source  = "terraform-google-modules/forseti/google"
  version = "2.3.0"
  org_id  = var.org_id
  suffix  = var.suffix
}
