variable "activate_apis" {
  description = "The list of apis to activate within the project"
  type        = list(string)
  default     = ["compute.googleapis.com"]
}

variable "api_sa_group" {
  description = "A G Suite group to place the Google APIs Service Account for the project in"
  type        = string
  default     = ""
}

variable "auto_create_network" {
  description = "Create the default network"
  type        = bool
  default     = false
}

variable "billing_account" {
  description = "The ID of the billing account to associate this project with"
  type        = string
  default     = ""
}

variable "bucket_location" {
  description = "The location for a GCS bucket to create (optional)"
  type        = string
  default     = ""
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

variable "bucket_versioning" {
  description = "Enable versioning for a GCS bucket to create (optional)"
  type        = bool
  default     = false
}

variable "budget_alert_pubsub_topic" {
  description = "The name of the Cloud Pub/Sub topic where budget related messages will be published, in the form of projects/{project_id}/topics/{topic_id}"
  type        = string
  default     = ""
}

variable "budget_alert_spent_percents" {
  description = "A list of percentages of the budget to alert on when threshold is exceeded"
  type        = list(number)
  default     = [0.5, 0.7, 1]
}

variable "budget_amount" {
  description = "The amount to use for a budget alert"
  type        = number
  default     = ""
}

variable "budget_monitoring_notification_channels" {
  description = "A list of monitoring notification channels in the form [projects/{project_id}/notificationChannels/{channel_id}]. A maximum of 5 channels are allowed."
  type        = list(string)
  default     = []
}

variable "consumer_quotas" {
  description = "The quotas configuration you want to override for the project."
  type = list(object({
    service = string,
    metric  = string,
    limit   = string,
    value   = string,
  }))
  default = []
}

variable "create_group" {
  description = "Whether to create the group or not"
  type        = bool
  default     = false
}

variable "create_project_sa" {
  description = "Whether the default service account for the project shall be created"
  type        = bool
  default     = true
}

variable "credentials_path" {
  description = "Path to a service account credentials file with rights to run the Project Factory. If this file is absent Terraform will fall back to Application Default Credentials."
  type        = string
  default     = ""
}

variable "default_service_account" {
  description = "Project default service account setting: can be one of delete, deprivilege, disable, or keep."
  type        = string
  default     = "disable"
}

variable "disable_dependent_services" {
  description = "Whether services that are enabled and which depend on this service should also be disabled when this service is destroyed."
  type        = bool
  default     = true
}

variable "disable_services_on_destroy" {
  description = "Whether project services will be disabled when the resources are destroyed"
  type        = bool
  default     = true
}

variable "domain" {
  description = "The domain name (optional)."
  type        = string
  default     = ""
}

variable "enable_shared_vpc_host_project" {
  description = "If this project is a shared VPC host project. If true, you must *not* set shared_vpc variable. Default is false."
  type        = bool
  default     = false
}

variable "enable_shared_vpc_service_project" {
  description = "If shared VPC should be used"
  type        = bool
  default     = false
}

variable "folder_id" {
  description = "The ID of a folder to host this project"
  type        = string
  default     = ""
}

variable "group_name" {
  description = "A group to control the project by being assigned group_role - defaults to ${project_name}-editors"
  type        = string
  default     = ""
}

variable "group_role" {
  description = "The role to give the controlling group (group_name) over the project (defaults to project editor)"
  type        = string
  default     = "roles/editor"
}

variable "impersonate_service_account" {
  description = "An optional service account to impersonate. If this service account is not specified, Terraform will fall back to credential file or Application Default Credentials."
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
  type        = bool
  default     = false
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
  description = "The ID to give the project. If not provided, the name will be used."
  type        = string
  default     = ""
}

variable "project_sa_name" {
  description = "Default service account name for the project."
  type        = string
  default     = "project-service-account"
}

variable "random_project_id" {
  description = "Adds a suffix of 4 random characters to the project_id"
  type        = bool
  default     = false
}

variable "sa_group" {
  description = "A G Suite group to place the default Service Account for the project in"
  type        = string
  default     = ""
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
  default     = []
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
