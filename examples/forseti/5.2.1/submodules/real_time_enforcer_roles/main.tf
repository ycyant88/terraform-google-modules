module "forseti" {
  source  = "terraform-google-modules/forseti/google"
  version = "5.2.1"
  org_id  = var.org_id
  suffix  = var.suffix
}
