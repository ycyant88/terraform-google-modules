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
