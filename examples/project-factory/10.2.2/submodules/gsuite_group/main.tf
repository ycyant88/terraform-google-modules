module "project-factory" {
  source  = "terraform-google-modules/project-factory/google"
  version = "10.2.2"
  domain  = var.domain
  name    = var.name
  org_id  = var.org_id
}
