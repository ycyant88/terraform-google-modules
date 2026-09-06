variable "additional_experiments" {
  description = "List of experiments that should be used by the job. An example value is ['enable_stackdriver_agent_metrics']"
  type        = list(string)
  default     = []
}

variable "enable_streaming_engine" {
  description = "Enable/disable the use of Streaming Engine for the job."
  type        = bool
  default     = false
}

variable "kms_key_name" {
  description = "The name for the Cloud KMS key for the job. Key format is: projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY"
  type        = string
  default     = null
}

variable "labels" {
  description = "User labels to be specified for the job."
  type        = map(string)
  default     = {}
}

variable "machine_type" {
  description = "The machine type to use for the job."
  type        = string
  default     = ""
}

variable "max_workers" {
  description = " The number of workers permitted to work on the job. More workers may improve processing speed at additional cost."
  type        = number
  default     = 1
}

variable "name" {
  description = "The name of the dataflow job"
  type        = string
  default     = ""
}

variable "network_name" {
  description = "The network to which VMs will be assigned."
  type        = string
  default     = "default"
}

variable "on_delete" {
  description = "One of drain or cancel. Specifies behavior of deletion during terraform destroy. The default is cancel."
  type        = string
  default     = "cancel"
}

variable "parameters" {
  description = "Key/Value pairs to be passed to the Dataflow job (as used in the template)."
  type        = map(string)
  default     = {}
}

variable "project_id" {
  description = "The project in which the resource belongs. If it is not provided, the provider project is used."
  type        = string
  default     = ""
}

variable "region" {
  description = "The region in which the created job should run. Also determines the location of the staging bucket if created."
  type        = string
  default     = "us-central1"
}

variable "service_account_email" {
  description = "The Service Account email that will be used to identify the VMs in which the jobs are running"
  type        = string
  default     = ""
}

variable "skip_wait_on_job_termination" {
  description = "If set to true, terraform will treat DRAINING and CANCELLING as terminal states when deleting the resource, and will remove the resource from terraform state and move on."
  type        = bool
  default     = false
}

variable "subnetwork" {
  description = "The subnetwork to which VMs will be assigned. If provided, it should be of the form of 'regions/REGION/subnetworks/SUBNETWORK'."
  type        = string
  default     = ""
}

variable "temp_gcs_location" {
  description = "A writeable location on GCS for the Dataflow job to dump its temporary data. It will be used to form the temp location path for the job, 'gs://TEMP_GCS_LOCATION/tmp_dir'."
  type        = string
  default     = ""
}

variable "template_gcs_path" {
  description = "The GCS path to the Dataflow job template."
  type        = string
  default     = ""
}

variable "use_public_ips" {
  description = "Specifies whether Dataflow workers use external IP addresses. If the value is set to false, Dataflow workers use internal IP addresses for all communication."
  type        = bool
  default     = false
}
