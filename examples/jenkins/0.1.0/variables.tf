variable "gcs_bucket" {
  description = "The name of an existing GCS bucket to associate with the created service account, allowing build artifacts to be uploaded. Leave blank to skip"
  type        = string
  default     = ""
}

variable "jenkins_boot_disk_source_image" {
  description = "The name of the disk image to use as the boot disk for the Jenkins master"
  type        = string
  default     = "bitnami-jenkins-2-138-2-0-linux-debian-9-x86-64"
}

variable "jenkins_boot_disk_source_image_project" {
  description = "The project within which the disk image to use as the Jenkins master boot disk exists"
  type        = string
  default     = "bitnami-launchpad"
}

variable "jenkins_initial_password" {
  description = "The initial password to protect Jenkins logins with. Defaults to a random 8-character alphanumeric string. This may not contain special characters."
  type        = string
  default     = ""
}

variable "jenkins_instance_access_cidrs" {
  description = "CIDRs to allow to access Jenkins over HTTP(s)"
  type        = list(any)
  default     = ["0.0.0.0/0"]
}

variable "jenkins_instance_additional_metadata" {
  description = "Additional instance metadata to assign to the Jenkins VM"
  type        = map(any)
  default     = {}
}

variable "jenkins_instance_machine_type" {
  description = "The machine type to provision for Jenkins"
  type        = string
  default     = "n1-standard-4"
}

variable "jenkins_instance_name" {
  description = "The name to assign to the Jenkins VM"
  type        = string
  default     = "jenkins"
}

variable "jenkins_instance_network" {
  description = "The GCP network to deploy the Jenkins VM in"
  type        = string
  default     = ""
}

variable "jenkins_instance_subnetwork" {
  description = "The GCP subnetwork to deploy the Jenkins VM in"
  type        = string
  default     = ""
}

variable "jenkins_instance_tags" {
  description = "Tags to assign to the Jenkins VM"
  type        = list(any)
  default     = []
}

variable "jenkins_instance_zone" {
  description = "The zone to deploy the Jenkins VM in"
  type        = string
  default     = ""
}

variable "jenkins_jobs" {
  description = "A list of Jenkins jobs to configure on the instance"
  type        = list(any)
  default     = []
}

variable "jenkins_service_account_display_name" {
  description = "The display name of the service account to create for Jenkins VM provisioning"
  type        = string
  default     = "Jenkins"
}

variable "jenkins_service_account_name" {
  description = "The name of the service account to create for Jenkins VM provisioning"
  type        = string
  default     = "jenkins"
}

variable "jenkins_workers_boot_disk_size_gb" {
  description = "The size of Jenkins worker boot disks, in gigabytes"
  type        = string
  default     = "10"
}

variable "jenkins_workers_boot_disk_source_image" {
  description = "The fully qualified URL to the disk image to use as the boot disk for Jenkins workers"
  type        = string
  default     = "ubuntu-1604-xenial-v20181023"
}

variable "jenkins_workers_boot_disk_source_image_project" {
  description = "The project within which the disk image to use as the Jenkins worker boot disk exists"
  type        = string
  default     = "ubuntu-os-cloud"
}

variable "jenkins_workers_boot_disk_type" {
  description = "The boot disk type to associate with Jenkins workers. Valid options are 'local-ssd', 'pd-ssd', and 'pd-standard'"
  type        = string
  default     = "pd-ssd"
}

variable "jenkins_workers_description" {
  description = "A description of the Jenkins worker cloud to show in Jenkins"
  type        = string
  default     = "Jenkins worker"
}

variable "jenkins_workers_instance_cap" {
  description = "The maximum number of GCE instances to create as Jenkins workers"
  type        = string
  default     = 1
}

variable "jenkins_workers_labels" {
  description = "GCP labels to apply to Jankins workers"
  type        = list(any)
  default     = []
}

variable "jenkins_workers_launch_timeout_seconds" {
  description = "The number of seconds to wait for a Jenkins worker to come online before timing out"
  type        = string
  default     = "300"
}

variable "jenkins_workers_machine_type" {
  description = "The machine type to deploy Jenkins workers onto"
  type        = string
  default     = "n1-standard-1"
}

variable "jenkins_workers_min_cpu_platform" {
  description = "The [minimum CPU platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform) to deploy Jenkins workers onto. Leave blank for no restriction."
  type        = string
  default     = ""
}

variable "jenkins_workers_name_prefix" {
  description = "A prefix for the Jenkins workers instance names"
  type        = string
  default     = "jenkins"
}

variable "jenkins_workers_network" {
  description = "The URL of the network to deploy Jenkins workers into"
  type        = string
  default     = ""
}

variable "jenkins_workers_network_tags" {
  description = "A list of network tags to apply to Jenkins workers"
  type        = list(any)
  default     = ["jenkins-agent"]
}

variable "jenkins_workers_num_executors" {
  description = "The number of concurrent jobs that can run on each Jenkins worker"
  type        = string
  default     = 1
}

variable "jenkins_workers_preemptible" {
  description = "Whether to launch Jenkins workers as preemptible instances"
  type        = string
  default     = "false"
}

variable "jenkins_workers_project_id" {
  description = "The GCP project to deploy Jenkins workers within"
  type        = string
  default     = ""
}

variable "jenkins_workers_region" {
  description = "The name of the region into which to deploy Jenkins workers"
  type        = string
  default     = ""
}

variable "jenkins_workers_retention_time_minutes" {
  description = "The number of minutes for Jenkins workers to remain online after completing their last job"
  type        = string
  default     = "6"
}

variable "jenkins_workers_run_as_user" {
  description = "The user to run Jenkins jobs as on workers"
  type        = string
  default     = "ubuntu"
}

variable "jenkins_workers_service_account_email" {
  description = "The service account email to assign to Jenkins workers. Leave blank for the default compute service account"
  type        = string
  default     = ""
}

variable "jenkins_workers_startup_script" {
  description = "Any additional configuration to run on boot of Jenkins workers"
  type        = string
  default     = ""
}

variable "jenkins_workers_subnetwork" {
  description = "The name of the subnetwork to deploy Jenkins workers into"
  type        = string
  default     = "default"
}

variable "jenkins_workers_zone" {
  description = "The name of the zone into which to deploy Jenkins workers"
  type        = string
  default     = "us-east4-b"
}

variable "project_id" {
  description = "The project ID to deploy to"
  type        = string
  default     = ""
}

variable "region" {
  description = "The region to deploy to"
  type        = string
  default     = ""
}
