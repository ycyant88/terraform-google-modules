terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.0"
    }
  }
}

provider "google" {
  project = var.project
  region  = var.region
}

module "forseti_server" {
  source                                 = "terraform-google-modules/forseti/google//modules/server"
  version                                = "5.2.1"
  client_iam_module                      = var.client_iam_module
  cloud_profiler_enabled                 = var.cloud_profiler_enabled
  cloudsql_module                        = var.cloudsql_module
  cloudsql_proxy_arch                    = var.cloudsql_proxy_arch
  forseti_home                           = var.forseti_home
  forseti_repo_url                       = var.forseti_repo_url
  forseti_run_frequency                  = var.forseti_run_frequency
  forseti_version                        = var.forseti_version
  mailjet_enabled                        = var.mailjet_enabled
  manage_firewall_rules                  = var.manage_firewall_rules
  network                                = var.network
  network_project                        = var.network_project
  policy_library_home                    = var.policy_library_home
  policy_library_repository_branch       = var.policy_library_repository_branch
  policy_library_repository_url          = var.policy_library_repository_url
  policy_library_sync_enabled            = var.policy_library_sync_enabled
  policy_library_sync_gcs_directory_name = var.policy_library_sync_gcs_directory_name
  policy_library_sync_git_sync_tag       = var.policy_library_sync_git_sync_tag
  policy_library_sync_ssh_known_hosts    = var.policy_library_sync_ssh_known_hosts
  project_id                             = var.project_id
  server_access_config                   = var.server_access_config
  server_boot_disk_size                  = var.server_boot_disk_size
  server_boot_disk_type                  = var.server_boot_disk_type
  server_boot_image                      = var.server_boot_image
  server_config_module                   = var.server_config_module
  server_gcs_module                      = var.server_gcs_module
  server_grpc_allow_ranges               = var.server_grpc_allow_ranges
  server_iam_module                      = var.server_iam_module
  server_instance_metadata               = var.server_instance_metadata
  server_private                         = var.server_private
  server_region                          = var.server_region
  server_rules_module                    = var.server_rules_module
  server_shielded_instance_config        = var.server_shielded_instance_config
  server_ssh_allow_ranges                = var.server_ssh_allow_ranges
  server_tags                            = var.server_tags
  server_type                            = var.server_type
  services                               = var.services
  subnetwork                             = var.subnetwork
  suffix                                 = var.suffix
}
