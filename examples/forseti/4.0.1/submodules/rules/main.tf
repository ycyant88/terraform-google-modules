module "forseti" {
  source  = "terraform-google-modules/forseti/google"
  version = "4.0.1"
  bucket  = var.bucket
  domain  = var.domain
  org_id  = var.org_id
}
