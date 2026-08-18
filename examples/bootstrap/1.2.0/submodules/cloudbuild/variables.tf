variable "activate_apis" {
  description = "List of APIs to enable in the Cloudbuild project."
  type        = list(string)
  default     = ["serviceusage.googleapis.com", "servicenetworking.googleapis.com", "compute.googleapis.com", "logging.googleapis.com", "bigquery.googleapis.com", "cloudresourcemanager.googleapis.com", "cloudbilling.googleapis.com", "iam.googleapis.com", "admin.googleapis.com", "appengine.googleapis.com", "storage-api.googleapis.com"]
}

variable "billing_account" {
  description = "The ID of the billing account to associate projects with."
  type        = string
  default     = ""
}

variable "cloud_source_repos" {
  description = "List of Cloud Source Repo's to create with CloudBuild triggers."
  type        = list(string)
  default     = ["gcp-org", "gcp-networks", "gcp-projects"]
}

variable "cloudbuild_apply_filename" {
  description = "Path and name of Cloud Build YAML definition used for terraform apply."
  type        = string
  default     = "cloudbuild-tf-apply.yaml"
}

variable "cloudbuild_plan_filename" {
  description = "Path and name of Cloud Build YAML definition used for terraform plan."
  type        = string
  default     = "cloudbuild-tf-plan.yaml"
}

variable "default_region" {
  description = "Default region to create resources where applicable."
  type        = string
  default     = "us-central1"
}

variable "folder_id" {
  description = "The ID of a folder to host this project"
  type        = string
  default     = ""
}

variable "group_org_admins" {
  description = "Google Group for GCP Organization Administrators"
  type        = string
  default     = ""
}

variable "org_id" {
  description = "GCP Organization ID"
  type        = string
  default     = ""
}

variable "project_labels" {
  description = "Labels to apply to the project."
  type        = map(string)
  default     = {}
}

variable "project_prefix" {
  description = "Name prefix to use for projects created."
  type        = string
  default     = "cft"
}

variable "sa_enable_impersonation" {
  description = "Allow org_admins group to impersonate service account & enable APIs required."
  type        = bool
  default     = false
}

variable "skip_gcloud_download" {
  description = "Whether to skip downloading gcloud (assumes gcloud is already available outside the module)"
  type        = bool
  default     = true
}

variable "storage_bucket_labels" {
  description = "Labels to apply to the storage bucket."
  type        = map(string)
  default     = {}
}

variable "terraform_apply_branches" {
  description = "List of git branches configured to run terraform apply Cloud Build trigger. All other branches will run plan by default."
  type        = list(string)
  default     = ["master"]
}

variable "terraform_sa_email" {
  description = "Email for terraform service account."
  type        = string
  default     = ""
}

variable "terraform_sa_name" {
  description = "Fully-qualified name of the terraform service account."
  type        = string
  default     = ""
}

variable "terraform_state_bucket" {
  description = "Default state bucket, used in Cloud Build substitutions."
  type        = string
  default     = ""
}

variable "terraform_version" {
  description = "Default terraform version."
  type        = string
  default     = "0.12.24"
}

variable "terraform_version_sha256sum" {
  description = "sha256sum for default terraform version."
  type        = string
  default     = "602d2529aafdaa0f605c06adb7c72cfb585d8aa19b3f4d8d189b42589e27bf11"
}
