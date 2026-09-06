module "vm" {
  source                    = "terraform-google-modules/vm/google"
  version                   = "7.8.0"
  disks                     = var.disks
  module_depends_on         = var.module_depends_on
  name                      = var.name
  project                   = var.project
  region                    = var.region
  snapshot_properties       = var.snapshot_properties
  snapshot_retention_policy = var.snapshot_retention_policy
  snapshot_schedule         = var.snapshot_schedule
}
