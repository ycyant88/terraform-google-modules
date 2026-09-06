variable "cloud_sql_region" {
  description = "The Cloud SQL region"
  type = 
  default = "us-central1"
}

variable "credentials_file_path" {
  description = "Path to service account json"
  type = 
  default = ""
}

variable "download_forseti" {
  description = "Whether to download the forseti repo or not. If false, a Forseti repo must be in the root of main.tf file. (Default 'true')"
  type = 
  default = "true"
}

variable "forseti_repo_branch" {
  description = "Forseti repository branch"
  type = 
  default = "stable"
}

variable "forseti_repo_url" {
  description = "Foresti git repository URL"
  type = 
  default = "https://github.com/GoogleCloudPlatform/forseti-security.git"
}

variable "gcs_location" {
  description = "The GCS bucket location"
  type = 
  default = "us-central1"
}

variable "gsuite_admin_email" {
  description = "The email of a GSuite super admin, used for pulling user directory information."
  type = 
  default = ""
}

variable "notification_recipient_email" {
  description = "Notification recipient email"
  type = 
  default = ""
}

variable "project_id" {
  description = "The ID of the project where Forseti will be installed"
  type = 
  default = ""
}

variable "sendgrid_api_key" {
  description = "The Sendgrid api key for notifier"
  type = 
  default = ""
}
