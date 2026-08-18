variable "activate_apis" {
  description = "List of APIs to enable in the Cloudbuild project."
  type        = list(string)
  default     = ["servicenetworking.googleapis.com", "compute.googleapis.com", "logging.googleapis.com", "bigquery-json.googleapis.com", "cloudresourcemanager.googleapis.com", "cloudbilling.googleapis.com", "iam.googleapis.com", "admin.googleapis.com", "appengine.googleapis.com"]
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
