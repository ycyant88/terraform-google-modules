variable "activate_apis" {
  description = "List of APIs to enable in the seed project."
  type        = list(string)
  default     = ["servicenetworking.googleapis.com", "compute.googleapis.com", "logging.googleapis.com", "bigquery-json.googleapis.com", "cloudresourcemanager.googleapis.com", "cloudbilling.googleapis.com", "iam.googleapis.com", "admin.googleapis.com", "appengine.googleapis.com"]
}

variable "billing_account" {
  description = "The ID of the billing account to associate projects with."
  type        = string
  default     = ""
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

variable "group_billing_admins" {
  description = "Google Group for GCP Billing Administrators"
  type        = string
  default     = ""
}

variable "group_org_admins" {
  description = "Google Group for GCP Organization Administrators"
  type        = string
  default     = ""
}

variable "org_admins_org_iam_permissions" {
  description = "List of permissions granted to the group supplied in group_org_admins variable across the GCP organization."
  type        = list(string)
  default     = ["roles/billing.user", "roles/resourcemanager.organizationAdmin"]
}

variable "org_id" {
  description = "GCP Organization ID"
  type        = string
  default     = ""
}

variable "org_project_creators" {
  description = "Additional list of members to have project creator role accross the organization. Prefix of group: user: or serviceAccount: is required."
  type        = list(string)
  default     = []
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

variable "sa_org_iam_permissions" {
  description = "List of permissions granted to Terraform service account across the GCP organization."
  type        = list(string)
  default     = ["roles/billing.user", "roles/compute.networkAdmin", "roles/compute.xpnAdmin", "roles/iam.serviceAccountAdmin", "roles/logging.configWriter", "roles/orgpolicy.policyAdmin", "roles/resourcemanager.folderCreator", "roles/resourcemanager.folderViewer", "roles/resourcemanager.organizationViewer"]
}
