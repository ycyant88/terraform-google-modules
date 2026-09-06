module "forseti" {
  source  = "terraform-google-modules/forseti/google"
  version = "4.1.0"
  bucket  = var.bucket
  domain  = var.domain
  org_id  = var.org_id
}
