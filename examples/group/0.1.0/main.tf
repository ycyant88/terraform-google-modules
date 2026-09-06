module "group" {
  source       = "terraform-google-modules/group/google"
  version      = "0.1.0"
  customer_id  = var.customer_id
  description  = var.description
  display_name = var.display_name
  domain       = var.domain
  id           = var.id
  managers     = var.managers
  members      = var.members
  owners       = var.owners
}
