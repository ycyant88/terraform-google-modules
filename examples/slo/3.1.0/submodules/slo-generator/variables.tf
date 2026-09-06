variable "additional_project_roles" {
  description = "Additional roles to grant to service account in project"
  type        = list(any)
  default     = []
}

variable "annotations" {
  description = "Cloud Run service annotations (see https://cloud.google.com/run/docs/reference/rest/v1/RevisionTemplate)"
  type        = map(any)
  default     = {}
}

variable "authorized_members" {
  description = "List of emails that are allowed to call the service"
  type        = list(string)
  default     = []
}

variable "bucket_name" {
  description = "slo-generator GCS bucket name"
  type        = string
  default     = ""
}

variable "concurrency" {
  description = "Cloud Run service concurrency (number of threads per container instance)"
  type        = number
  default     = 80
}

variable "config" {
  description = "slo-generator shared config"
  type        = map(any)
  default     = {}
}

variable "create_cloud_schedulers" {
  description = "Whether to create Cloud Schedulers for each SLO or not"
  type        = bool
  default     = true
}

variable "create_iam_roles" {
  description = "Whether to create IAM roles"
  type        = bool
  default     = true
}

variable "create_service" {
  description = "Create service"
  type        = bool
  default     = true
}

variable "env" {
  description = "Cloud Run service env variables"
  type        = map(any)
  default     = {}
}

variable "gcr_project_id" {
  description = "slo-generator image project id"
  type        = string
  default     = "slo-generator-ci-a2b4"
}

variable "ingress" {
  description = "Cloud Run service ingress settings, between 'all', 'internal', 'internal-and-cloud-load-balancing', see https://cloud.google.com/sdk/gcloud/reference/run/deploy#--ingress"
  type        = string
  default     = "all"
}

variable "labels" {
  description = "Resource labels"
  type        = map(any)
  default     = {}
}

variable "limits" {
  description = "Cloud Run service resources.limits configuration"
  type        = map(any)
  default     = { "cpu" : "1000m", "memory" : "512Mi" }
}

variable "project_id" {
  description = "Project id"
  type        = string
  default     = ""
}

variable "pubsub_topic_name" {
  description = "Input PubSub topic"
  type        = string
  default     = "export"
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "europe-west1"
}

variable "requests" {
  description = "Cloud Run service resources.requests configuration"
  type        = map(any)
  default     = {}
}

variable "schedule" {
  description = "Cloud Scheduler schedule"
  type        = string
  default     = "* * * * *"
}

variable "secrets" {
  description = "Cloud Run service secrets"
  type        = map(any)
  default     = {}
}

variable "service_account_email" {
  description = "Cloud Run service account. Defaults to compute service account."
  type        = string
  default     = ""
}

variable "service_name" {
  description = "Cloud Run service name"
  type        = string
  default     = "slo-generator"
}

variable "service_url" {
  description = "Cloud Run service URL. Will be created if empty."
  type        = string
  default     = ""
}

variable "signature_type" {
  description = "Functions Framework signature type, between 'http' and 'cloudevent'. In 'cloudevent' mode the POST request data needs to be warpped in a Cloud Event."
  type        = string
  default     = "http"
}

variable "slo_configs" {
  description = "slo-generator SLO configs"
  type        = list(any)
  default     = []
}

variable "slo_generator_version" {
  description = "slo-generator container image version"
  type        = string
  default     = "latest"
}

variable "target" {
  description = "Functions Framework target, between 'run_compute' and 'run_export'. If run_compute, the API accepts SLO configs as input, if 'run_export' the API accepts SLO reports as input."
  type        = string
  default     = "run_compute"
}
