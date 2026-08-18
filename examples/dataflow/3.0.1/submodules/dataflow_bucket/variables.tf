variable "force_destroy" {
  description = "When deleting a bucket, this boolean option will delete all contained objects. If you try to delete a bucket that contains objects, Terraform will fail that run."
  type        = bool
  default     = false
}

variable "name" {
  description = "The name of the bucket."
  type        = string
  default     = ""
}

variable "project_id" {
  description = "The project_id to deploy the example instance into.  (e.g. \"simple-sample-project-1234\")"
  type        = string
  default     = ""
}

variable "region" {
  description = "The GCS bucket region. This should be the same as your dataflow job's zone ot optimize performance."
  type        = string
  default     = "us-central1"
}
