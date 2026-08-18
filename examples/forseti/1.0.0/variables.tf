variable "bucket_cai_lifecycle_age" {
  description = "GCS CAI lifecycle age value"
  type = 
  default = "14"
}

variable "bucket_cai_location" {
  description = "GCS CAI storage bucket location"
  type = 
  default = "us-central1"
}

variable "client_boot_image" {
  description = "GCE Forseti Client role instance size"
  type = 
  default = "ubuntu-os-cloud/ubuntu-1804-lts"
}

variable "client_region" {
  description = "GCE Forseti Client role region size"
  type = 
  default = "us-central1"
}

variable "client_type" {
  description = "GCE Forseti Client role instance size"
  type = 
  default = "n1-standard-2"
}

variable "cloudsql_db_name" {
  description = "CloudSQL database name"
  type = 
  default = "forseti_security"
}

variable "cloudsql_db_port" {
  description = "CloudSQL database port"
  type = 
  default = "3306"
}

variable "cloudsql_proxy_arch" {
  description = "CloudSQL Proxy architecture"
  type = 
  default = "linux.amd64"
}

variable "cloudsql_region" {
  description = "CloudSQL region"
  type = 
  default = "us-central1"
}

variable "cloudsql_type" {
  description = "CloudSQL Instance size"
  type = 
  default = "db-n1-standard-1"
}

variable "domain" {
  description = "The domain associated with the GCP Organization ID"
  type = 
  default = ""
}

variable "enable_cai_bucket" {
  description = "Create a GCS bucket for CAI exports"
  type = 
  default = "true"
}

variable "enable_write" {
  description = "Enabling/Disabling write actions"
  type = 
  default = "false"
}

variable "folder_id" {
  description = "GCP Folder that the Forseti project will be deployed into"
  type = 
  default = ""
}

variable "forseti_email_recipient" {
  description = "Email address that receives Forseti notifications"
  type = 
  default = ""
}

variable "forseti_email_sender" {
  description = "Email address that sends the Forseti notifications"
  type = 
  default = ""
}

variable "forseti_home" {
  description = "Forseti installation directory"
  type = 
  default = "$USER_HOME/forseti-security"
}

variable "forseti_repo_url" {
  description = "Git repo for the Forseti installation"
  type = 
  default = "https://github.com/GoogleCloudPlatform/forseti-security"
}

variable "forseti_run_frequency" {
  description = "Schedule of running the Forseti scans"
  type = 
  default = "* */2 * * *"
}

variable "forseti_version" {
  description = "The version of Forseti to install"
  type = 
  default = "v2.10.0"
}

variable "gsuite_admin_email" {
  description = "G-Suite administrator email address to manage your Forseti installation"
  type = 
  default = ""
}

variable "network" {
  description = "The VPC where the Forseti client and server will be created"
  type = 
  default = "default"
}

variable "network_project" {
  description = "The project containing the VPC and subnetwork where the Forseti client and server will be created"
  type = 
  default = ""
}

variable "org_id" {
  description = "GCP Organization ID that Forseti will have purview over"
  type = 
  default = ""
}

variable "project_id" {
  description = "Google Project ID that you want Forseti deployed into"
  type = 
  default = ""
}

variable "sendgrid_api_key" {
  description = "Sendgrid.com API key to enable email notifications"
  type = 
  default = ""
}

variable "server_boot_image" {
  description = "GCE instance image that is being used, currently Debian only support is available"
  type = 
  default = "ubuntu-os-cloud/ubuntu-1804-lts"
}

variable "server_region" {
  description = "GCP region where Forseti will be deployed"
  type = 
  default = "us-central1"
}

variable "server_type" {
  description = "GCE Forseti Server role instance size"
  type = 
  default = "n1-standard-2"
}

variable "storage_bucket_location" {
  description = "GCS storage bucket location"
  type = 
  default = "us-central1"
}

variable "subnetwork" {
  description = "The VPC subnetwork where the Forseti client and server will be created"
  type = 
  default = "default"
}
