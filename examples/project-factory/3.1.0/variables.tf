variable "activate_apis" {
  description = "The list of apis to activate within the project"
  type        = list(string)
  default     = ["compute.googleapis.com"]
}

variable "apis_authority" {
  description = "Toggles authoritative management of project services."
  type        = string
  default     = "false"
}

variable "auto_create_network" {
  description = "Create the default network"
  type        = string
  default     = "false"
}

variable "billing_account" {
  description = "The ID of the billing account to associate this project with"
  type        = string
  default     = ""
}

variable "bucket_location" {
  description = "The location for a GCS bucket to create (optional)"
  type        = string
  default     = "US"
}

variable "bucket_name" {
  description = "A name for a GCS bucket to create (in the bucket_project project), useful for Terraform state (optional)"
  type        = string
  default     = ""
}

variable "bucket_project" {
  description = "A project to create a GCS bucket (bucket_name) in, useful for Terraform state (optional)"
  type        = string
  default     = ""
}

variable "credentials_path" {
  description = "Path to a service account credentials file with rights to run the Project Factory. If this file is absent Terraform will fall back to Application Default Credentials."
  type        = string
  default     = ""
}

variable "default_service_account" {
  description = "Project default service account setting: can be one of delete, depriviledge, or keep."
  type        = string
  default     = "delete"
}

variable "disable_dependent_services" {
  description = "Whether services that are enabled and which depend on this service should also be disabled when this service is destroyed."
  type        = string
  default     = "true"
}

variable "disable_services_on_destroy" {
  description = "Whether project services will be disabled when the resources are destroyed"
  type        = string
  default     = "true"
}

variable "domain" {
  description = "The domain name (optional)."
  type        = string
  default     = ""
}

variable "folder_id" {
  description = "The ID of a folder to host this project"
  type        = string
  default     = ""
}

variable "group_name" {
  description = "A group to control the project by being assigned group_role (defaults to project editor)"
  type        = string
  default     = ""
}

variable "group_role" {
  description = "The role to give the controlling group (group_name) over the project (defaults to project editor)"
  type        = string
  default     = "roles/editor"
}

variable "impersonate_service_account" {
  description = "An optional service account to impersonate. This cannot be used with credentials_path. If this service account is not specified and credentials_path is absent, the module will use Application Default Credentials."
  type        = string
  default     = ""
}

variable "labels" {
  description = "Map of labels for project"
  type        = map(string)
  default     = {}
}

variable "lien" {
  description = "Add a lien on the project to prevent accidental deletion"
  type        = string
  default     = "false"
}

variable "name" {
  description = "The name for the project"
  type        = string
  default     = ""
}

variable "org_id" {
  description = "The organization ID."
  type        = string
  default     = ""
}

variable "project_id" {
  description = "If provided, the project uses the given project ID. Mutually exclusive with random_project_id being true."
  type        = string
  default     = ""
}

variable "random_project_id" {
  description = "Enables project random id generation. Mutually exclusive with project_id being non-empty."
  type        = string
  default     = "false"
}

variable "sa_role" {
  description = "A role to give the default Service Account for the project (defaults to none)"
  type        = string
  default     = ""
}

variable "shared_vpc" {
  description = "The ID of the host project which hosts the shared VPC"
  type        = string
  default     = ""
}

variable "shared_vpc_subnets" {
  description = "List of subnets fully qualified subnet IDs (ie. projects/$project_id/regions/$region/subnetworks/$subnet_id)"
  type        = list(string)
  default     = [""]
}

variable "usage_bucket_name" {
  description = "Name of a GCS bucket to store GCE usage reports in (optional)"
  type        = string
  default     = ""
}

variable "usage_bucket_prefix" {
  description = "Prefix in the GCS bucket to store GCE usage reports in (optional)"
  type        = string
  default     = ""
}
