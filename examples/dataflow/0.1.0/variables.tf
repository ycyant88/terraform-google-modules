variable "max_workers" {
  description = " The number of workers permitted to work on the job. More workers may improve processing speed at additional cost."
  type        = string
  default     = "1"
}

variable "name" {
  description = "The name of the dataflow job"
  type        = string
  default     = ""
}

variable "on_delete" {
  description = "One of drain or cancel. Specifies behavior of deletion during terraform destroy. The default is cancel."
  type        = string
  default     = "cancel"
}

variable "parameters" {
  description = "Key/Value pairs to be passed to the Dataflow job (as used in the template)."
  type        = map(any)
  default     = {}
}

variable "project_id" {
  description = "The project in which the resource belongs. If it is not provided, the provider project is used."
  type        = string
  default     = ""
}

variable "region" {
  description = "The bucket's region location"
  type        = string
  default     = "us-central1"
}

variable "service_account_email" {
  description = "The Service Account email that will be used to identify the VMs in which the jobs are running"
  type        = string
  default     = ""
}

variable "temp_gcs_location" {
  description = "A writeable location on GCS for the Dataflow job to dump its temporary data."
  type        = string
  default     = ""
}

variable "template_gcs_path" {
  description = "The GCS path to the Dataflow job template."
  type        = string
  default     = ""
}

variable "zone" {
  description = "The zone in which the created job should run. If it is not provided, the provider zone is used."
  type        = string
  default     = "us-central1-a"
}
