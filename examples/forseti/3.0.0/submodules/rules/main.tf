module "forseti" {
  source  = "terraform-google-modules/forseti/google"
  version = "3.0.0"
  bucket  = var.bucket
  domain  = var.domain
  org_id  = var.org_id
}
