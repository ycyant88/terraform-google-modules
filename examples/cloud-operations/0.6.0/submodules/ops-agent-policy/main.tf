module "cloud-operations" {
  source          = "terraform-google-modules/cloud-operations/google"
  version         = "0.6.0"
  agents_rule     = var.agents_rule
  assignment_id   = var.assignment_id
  instance_filter = var.instance_filter
  project         = var.project
  zone            = var.zone
}
