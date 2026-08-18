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

module "jenkins" {
  source                                         = "terraform-google-modules/jenkins/google"
  version                                        = "1.0.0"
  gcs_bucket                                     = var.gcs_bucket
  jenkins_boot_disk_source_image                 = var.jenkins_boot_disk_source_image
  jenkins_boot_disk_source_image_project         = var.jenkins_boot_disk_source_image_project
  jenkins_initial_password                       = var.jenkins_initial_password
  jenkins_instance_access_cidrs                  = var.jenkins_instance_access_cidrs
  jenkins_instance_additional_metadata           = var.jenkins_instance_additional_metadata
  jenkins_instance_machine_type                  = var.jenkins_instance_machine_type
  jenkins_instance_name                          = var.jenkins_instance_name
  jenkins_instance_network                       = var.jenkins_instance_network
  jenkins_instance_subnetwork                    = var.jenkins_instance_subnetwork
  jenkins_instance_tags                          = var.jenkins_instance_tags
  jenkins_instance_zone                          = var.jenkins_instance_zone
  jenkins_jobs                                   = var.jenkins_jobs
  jenkins_service_account_display_name           = var.jenkins_service_account_display_name
  jenkins_service_account_name                   = var.jenkins_service_account_name
  jenkins_workers_boot_disk_size_gb              = var.jenkins_workers_boot_disk_size_gb
  jenkins_workers_boot_disk_source_image         = var.jenkins_workers_boot_disk_source_image
  jenkins_workers_boot_disk_source_image_project = var.jenkins_workers_boot_disk_source_image_project
  jenkins_workers_boot_disk_type                 = var.jenkins_workers_boot_disk_type
  jenkins_workers_description                    = var.jenkins_workers_description
  jenkins_workers_instance_cap                   = var.jenkins_workers_instance_cap
  jenkins_workers_labels                         = var.jenkins_workers_labels
  jenkins_workers_launch_timeout_seconds         = var.jenkins_workers_launch_timeout_seconds
  jenkins_workers_machine_type                   = var.jenkins_workers_machine_type
  jenkins_workers_min_cpu_platform               = var.jenkins_workers_min_cpu_platform
  jenkins_workers_name_prefix                    = var.jenkins_workers_name_prefix
  jenkins_workers_network                        = var.jenkins_workers_network
  jenkins_workers_network_tags                   = var.jenkins_workers_network_tags
  jenkins_workers_num_executors                  = var.jenkins_workers_num_executors
  jenkins_workers_preemptible                    = var.jenkins_workers_preemptible
  jenkins_workers_project_id                     = var.jenkins_workers_project_id
  jenkins_workers_region                         = var.jenkins_workers_region
  jenkins_workers_retention_time_minutes         = var.jenkins_workers_retention_time_minutes
  jenkins_workers_run_as_user                    = var.jenkins_workers_run_as_user
  jenkins_workers_service_account_email          = var.jenkins_workers_service_account_email
  jenkins_workers_startup_script                 = var.jenkins_workers_startup_script
  jenkins_workers_subnetwork                     = var.jenkins_workers_subnetwork
  jenkins_workers_zone                           = var.jenkins_workers_zone
  project_id                                     = var.project_id
  region                                         = var.region
}
