module "cloud-dns" {
  source             = "terraform-google-modules/cloud-dns/google"
  version            = "6.2.0"
  description        = var.description
  gke_clusters_list  = var.gke_clusters_list
  network_self_links = var.network_self_links
  policy_name        = var.policy_name
  project_id         = var.project_id
  rules              = var.rules
}
