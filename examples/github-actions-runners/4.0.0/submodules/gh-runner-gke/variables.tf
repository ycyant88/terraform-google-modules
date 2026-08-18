variable "arc_container_mode" {
  description = "value of containerMode.type in ARC runner scale set helm chart. If set, value can be dind or kubernetes"
  type        = string
  default     = ""
}

variable "arc_controller_values" {
  description = "List of values in raw yaml format to pass to helm for ARC runners scale set controller chart"
  type        = list(string)
  default     = []
}

variable "arc_controller_version" {
  description = "Version tag for the ARC image. See [https://github.com/actions/actions-runner-controller/pkgs/container/actions-runner-controller-charts%2Fgha-runner-scale-set-controller](https://github.com/actions/actions-runner-controller/pkgs/container/actions-runner-controller-charts%2Fgha-runner-scale-set-controller) for releases."
  type        = string
  default     = "0.9.3"
}

variable "arc_runners_namespace" {
  description = "Namespace created for the ARC runner pods."
  type        = string
  default     = "arc-runners"
}

variable "arc_runners_values" {
  description = "List of values in raw yaml format to pass to helm for ARC runners scale set chart"
  type        = list(string)
  default     = []
}

variable "arc_runners_version" {
  description = "Version tag for the ARC image. See [https://github.com/actions/actions-runner-controller/pkgs/container/actions-runner-controller-charts%2Fgha-runner-scale-set](https://github.com/actions/actions-runner-controller/pkgs/container/actions-runner-controller-charts%2Fgha-runner-scale-set) for releases."
  type        = string
  default     = "0.9.3"
}

variable "arc_systems_namespace" {
  description = "Namespace created for the ARC operator pods."
  type        = string
  default     = "arc-systems"
}

variable "cluster_suffix" {
  description = "Name of the GitHub organization associated with this runner cluster."
  type        = string
  default     = "arc"
}

variable "create_network" {
  description = "When set to true, VPC will be auto created"
  type        = bool
  default     = true
}

variable "gh_app_id" {
  description = "After creating the GitHub App, on the GitHub App's page, note the value for \"App ID\"."
  type        = string
  default     = ""
}

variable "gh_app_installation_id" {
  description = "You can find the app installation ID on the app installation page, which has the following URL format: https://github.com/organizations/ORGANIZATION/settings/installations/INSTALLATION_ID"
  type        = string
  default     = ""
}

variable "gh_app_pre_defined_secret_name" {
  description = "Name for the k8s secret required to configure gh runners on GKE via GitHub App authentication"
  type        = string
  default     = "gh-app-pre-defined-secret"
}

variable "gh_app_private_key" {
  description = "Under \"Private keys\", click Generate a private key, and save the .pem file. Use the contents of this file for this variable."
  type        = string
  default     = ""
}

variable "gh_config_url" {
  description = "URL of GitHub App config. If installed in an organization, this is in the format \"https://github.com/ORGANIZATION\""
  type        = string
  default     = ""
}

variable "ip_range_pods_cidr" {
  description = "The secondary ip range cidr to use for pods"
  type        = string
  default     = "192.168.0.0/18"
}

variable "ip_range_pods_name" {
  description = "The secondary ip range to use for pods"
  type        = string
  default     = "ip-range-pods"
}

variable "ip_range_services_cider" {
  description = "The secondary ip range cidr to use for services"
  type        = string
  default     = "192.168.64.0/18"
}

variable "ip_range_services_name" {
  description = "The secondary ip range to use for services"
  type        = string
  default     = "ip-range-scv"
}

variable "machine_type" {
  description = "Machine type for runner node pool"
  type        = string
  default     = "n1-standard-4"
}

variable "max_node_count" {
  description = "Maximum number of nodes in the runner node pool"
  type        = number
  default     = 4
}

variable "min_node_count" {
  description = "Minimum number of nodes in the runner node pool"
  type        = number
  default     = 2
}

variable "network_name" {
  description = "Name for the VPC network"
  type        = string
  default     = "runner-network"
}

variable "project_id" {
  description = "The project id to deploy Github Runner cluster"
  type        = string
  default     = ""
}

variable "region" {
  description = "The GCP region to deploy instances into"
  type        = string
  default     = "us-east4"
}

variable "service_account" {
  description = "Optional Service Account for the nodes"
  type        = string
  default     = ""
}

variable "subnet_ip" {
  description = "IP range for the subnet"
  type        = string
  default     = "10.0.0.0/17"
}

variable "subnet_name" {
  description = "Name for the subnet"
  type        = string
  default     = "runner-subnet"
}

variable "subnetwork_project" {
  description = "The ID of the project in which the subnetwork belongs. If it is not provided, the project_id is used."
  type        = string
  default     = ""
}

variable "zones" {
  description = "The GCP zone to deploy gke into"
  type        = list(string)
  default     = ["us-east4-a"]
}
