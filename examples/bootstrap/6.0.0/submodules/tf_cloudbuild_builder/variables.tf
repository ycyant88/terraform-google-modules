variable "cb_logs_bucket_force_destroy" {
  description = "When deleting the bucket for storing CloudBuild logs, this boolean option will delete all contained objects. If false, Terraform will fail to delete buckets which contain objects."
  type        = bool
  default     = false
}

variable "cloudbuild_sa" {
  description = "Custom SA email to be used by the CloudBuild trigger. Defaults to being created if empty."
  type        = string
  default     = ""
}

variable "dockerfile_repo_dir" {
  description = "The directory inside the repo where the Dockerfile is located. If empty defaults to repo root."
  type        = string
  default     = ""
}

variable "dockerfile_repo_ref" {
  description = "The branch or tag to use. Use refs/heads/branchname for branches or refs/tags/tagname for tags."
  type        = string
  default     = "refs/heads/main"
}

variable "dockerfile_repo_type" {
  description = "Type of repo"
  type        = string
  default     = "CLOUD_SOURCE_REPOSITORIES"
}

variable "dockerfile_repo_uri" {
  description = "The URI of the repo where the Dockerfile for Terraform builder is stored"
  type        = string
  default     = ""
}

variable "gar_repo_location" {
  description = "Name of the location for the Google Artifact Repository."
  type        = string
  default     = "us"
}

variable "gar_repo_name" {
  description = "Name of the Google Artifact Repository where the Terraform builder images are stored."
  type        = string
  default     = "tf-runners"
}

variable "image_name" {
  description = "Name of the image for the Terraform builder."
  type        = string
  default     = "terraform"
}

variable "project_id" {
  description = "GCP project for Cloud Build trigger,workflow and scheduler."
  type        = string
  default     = ""
}

variable "trigger_name" {
  description = "Name of the Cloud Build trigger building the Terraform builder."
  type        = string
  default     = "tf-cloud-builder-build"
}

variable "workflow_name" {
  description = "Name of the workflow managing builds."
  type        = string
  default     = "terraform-runner-workflow"
}

variable "workflow_region" {
  description = "The region of the workflow."
  type        = string
  default     = "us-central1"
}

variable "workflow_sa" {
  description = "Custom SA email to be used by the workflow. Defaults to being created if empty."
  type        = string
  default     = ""
}

variable "workflow_schedule" {
  description = "The workflow frequency, in cron syntax"
  type        = string
  default     = "0 8 * * *"
}
