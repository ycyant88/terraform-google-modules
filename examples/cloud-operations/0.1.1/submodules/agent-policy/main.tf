module "cloud-operations" {
  source       = "terraform-google-modules/cloud-operations/google"
  version      = "0.1.1"
  agent_rules  = var.agent_rules
  description  = var.description
  group_labels = var.group_labels
  instances    = var.instances
  os_types     = var.os_types
  policy_id    = var.policy_id
  project_id   = var.project_id
  zones        = var.zones
}
