module "cloud-dns" {
  source             = "terraform-google-modules/cloud-dns/google"
  version            = "5.1.1"
  description        = var.description
  network_self_links = var.network_self_links
  policy_name        = var.policy_name
  project_id         = var.project_id
  rules              = var.rules
}
