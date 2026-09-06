module "forseti" {
  source  = "terraform-google-modules/forseti/google"
  version = "1.4.2"
  bucket  = var.bucket
  domain  = var.domain
  org_id  = var.org_id
}
