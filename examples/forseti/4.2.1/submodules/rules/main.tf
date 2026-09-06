module "forseti" {
  source               = "terraform-google-modules/forseti/google"
  version              = "4.2.1"
  bucket               = var.bucket
  domain               = var.domain
  manage_rules_enabled = var.manage_rules_enabled
  org_id               = var.org_id
}
