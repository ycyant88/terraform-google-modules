variable "certmanager_email" {
  description = "Email used to retrieve SSL certificates from Let's Encrypt"
  type        = string
  default     = ""
}

variable "domain" {
  description = "Domain for hosting gitlab functionality (ie mydomain.com would access gitlab at gitlab.mydomain.com)"
  type        = string
  default     = ""
}

variable "gitlab_address_name" {
  description = "Name of the address to use for GitLab ingress"
  type        = string
  default     = ""
}

variable "gitlab_db_name" {
  description = "Instance name for the GitLab Postgres database."
  type        = string
  default     = "gitlab-db"
}

variable "gitlab_db_password" {
  description = "Password for the GitLab Postgres user"
  type        = string
  default     = ""
}

variable "gitlab_nodes_subnet_cidr" {
  description = "Cidr range to use for gitlab GKE nodes subnet"
  type        = string
  default     = "10.0.0.0/16"
}

variable "gitlab_pods_subnet_cidr" {
  description = "Cidr range to use for gitlab GKE pods subnet"
  type        = string
  default     = "10.3.0.0/16"
}

variable "gitlab_runner_install" {
  description = "Choose whether to install the gitlab runner in the cluster"
  type        = string
  default     = true
}

variable "gitlab_services_subnet_cidr" {
  description = "Cidr range to use for gitlab GKE services subnet"
  type        = string
  default     = "10.2.0.0/16"
}

variable "gke_version" {
  description = "Version of GKE to use for the GitLab cluster"
  type        = string
  default     = "1.14"
}

variable "helm_chart_version" {
  description = "Helm chart version to install during deployment"
  type        = string
  default     = "2.3.7"
}

variable "project_id" {
  description = "GCP Project to deploy resources"
  type        = string
  default     = ""
}

variable "region" {
  description = "GCP region to deploy resources to"
  type        = string
  default     = "us-central1"
}
