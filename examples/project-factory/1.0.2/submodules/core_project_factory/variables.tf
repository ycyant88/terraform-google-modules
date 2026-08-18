variable "activate_apis" {
  description = "The list of apis to activate within the project"
  type = 
  default = ["compute.googleapis.com"]
}

variable "app_engine" {
  description = "A map for app engine configuration"
  type = 
  default = {}
}

variable "auto_create_network" {
  description = "Create the default network"
  type = 
  default = "false"
}

variable "billing_account" {
  description = "The ID of the billing account to associate this project with"
  type = 
  default = ""
}

variable "bucket_name" {
  description = "A name for a GCS bucket to create (in the bucket_project project), useful for Terraform state (optional)"
  type = 
  default = ""
}

variable "bucket_project" {
  description = "A project to create a GCS bucket (bucket_name) in, useful for Terraform state (optional)"
  type = 
  default = ""
}

variable "credentials_path" {
  description = "Path to a Service Account credentials file with permissions documented in the readme"
  type = 
  default = ""
}

variable "disable_services_on_destroy" {
  description = "Whether project services will be disabled when the resources are destroyed"
  type = 
  default = "true"
}

variable "folder_id" {
  description = "The ID of a folder to host this project"
  type = 
  default = ""
}

variable "group_email" {
  description = "The email address of a group to control the project by being assigned group_role."
  type = 
  default = ""
}

variable "group_role" {
  description = "The role to give the controlling group (group_name) over the project."
  type = 
  default = ""
}

variable "labels" {
  description = "Map of labels for project"
  type = 
  default = {}
}

variable "lien" {
  description = "Add a lien on the project to prevent accidental deletion"
  type = 
  default = "false"
}

variable "manage_group" {
  description = "A toggle to indicate if a G Suite group should be managed."
  type = 
  default = "false"
}

variable "name" {
  description = "The name for the project"
  type = 
  default = ""
}

variable "org_id" {
  description = "The organization ID."
  type = 
  default = ""
}

variable "random_project_id" {
  description = "Enables project random id generation"
  type = 
  default = "false"
}

variable "sa_role" {
  description = "A role to give the default Service Account for the project (defaults to none)"
  type = 
  default = ""
}

variable "shared_vpc" {
  description = "The ID of the host project which hosts the shared VPC"
  type = 
  default = ""
}

variable "shared_vpc_subnets" {
  description = "List of subnets fully qualified subnet IDs (ie. projects/$project_id/regions/$region/subnetworks/$subnet_id)"
  type = 
  default = [""]
}

variable "usage_bucket_name" {
  description = "Name of a GCS bucket to store GCE usage reports in (optional)"
  type = 
  default = ""
}

variable "usage_bucket_prefix" {
  description = "Prefix in the GCS bucket to store GCE usage reports in (optional)"
  type = 
  default = ""
}
