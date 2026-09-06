variable "forseti_client_service_account" {
  description = "Forseti Client service account"
  type        = string
  default     = ""
}

variable "forseti_client_vm_ip" {
  description = "Forseti Client VM private IP address"
  type        = string
  default     = ""
}

variable "forseti_cloudsql_connection_name" {
  description = "Forseti CloudSQL Connection String"
  type        = string
  default     = ""
}

variable "forseti_server_bucket" {
  description = "Forseti Server storage bucket"
  type        = string
  default     = ""
}

variable "forseti_server_service_account" {
  description = "Forseti Server service account"
  type        = string
  default     = ""
}

variable "gke_service_account" {
  description = "The name of the IAM service account attached to the GKE cluster node-pool"
  type        = string
  default     = ""
}

variable "helm_repository_url" {
  description = "The Helm repository containing the 'forseti-security' Helm charts"
  type        = string
  default     = "https://forseti-security-charts.storage.googleapis.com/release/"
}

variable "k8s_forseti_namespace" {
  description = "The Kubernetes namespace in which to deploy Forseti."
  type        = string
  default     = "forseti"
}

variable "k8s_forseti_orchestrator_image" {
  description = "The container image for the Forseti orchestrator"
  type        = string
  default     = "gcr.io/forseti-containers/forseti"
}

variable "k8s_forseti_orchestrator_image_tag" {
  description = "The tag for the container image for the Forseti orchestrator"
  type        = string
  default     = "v2.19.1"
}

variable "k8s_forseti_server_image" {
  description = "The container image for the Forseti server"
  type        = string
  default     = "gcr.io/forseti-containers/forseti"
}

variable "k8s_forseti_server_image_tag" {
  description = "The tag for the container image for the Forseti server"
  type        = string
  default     = "v2.19.1"
}

variable "k8s_tiller_sa_name" {
  description = "The Kubernetes Service Account used by Tiller"
  type        = string
  default     = "tiller"
}

variable "load_balancer" {
  description = "The type of load balancer to deploy for the forseti-server if desired: none, external, internal"
  type        = string
  default     = "none"
}

variable "network_policy" {
  description = "Apply pod network policies"
  type        = bool
  default     = false
}

variable "production" {
  description = "Whether or not to deploy Forseti on GKE in a production configuration"
  type        = bool
  default     = true
}

variable "project_id" {
  description = "The ID of the GCP project where Forseti is currently deployed."
  type        = string
  default     = ""
}

variable "recreate_pods" {
  description = "Instructs the helm_release resource to, on update, perform pod restarts for the resources if applicable."
  type        = bool
  default     = true
}

variable "server_log_level" {
  description = "The log level of the Forseti server container."
  type        = string
  default     = "info"
}
