variable "description" {
  description = "The description of the cluster"
  type        = string
  default     = ""
}

variable "disable_legacy_metadata_endpoints" {
  description = "Disable the /0.1/ and /v1beta1/ metadata server endpoints on the node. Changing this value will cause all node pools to be recreated."
  type        = string
  default     = "true"
}

variable "enable_private_endpoint" {
  description = "(Beta) Whether the master's internal IP address is used as the cluster endpoint"
  type        = string
  default     = false
}

variable "enable_private_nodes" {
  description = "(Beta) Whether nodes have internal IP addresses only"
  type        = string
  default     = false
}

variable "horizontal_pod_autoscaling" {
  description = "Enable horizontal pod autoscaling addon"
  type        = string
  default     = true
}

variable "http_load_balancing" {
  description = "Enable httpload balancer addon"
  type        = string
  default     = true
}

variable "ip_masq_link_local" {
  description = "Whether to masquerade traffic to the link-local prefix (169.254.0.0/16)."
  type        = string
  default     = "false"
}

variable "ip_masq_resync_interval" {
  description = "The interval at which the agent attempts to sync its ConfigMap file from the disk."
  type        = string
  default     = "60s"
}

variable "ip_range_pods" {
  description = "The _name_ of the secondary subnet ip range to use for pods"
  type        = string
  default     = ""
}

variable "ip_range_services" {
  description = "The _name_ of the secondary subnet range to use for services"
  type        = string
  default     = ""
}

variable "kubernetes_dashboard" {
  description = "Enable kubernetes dashboard addon"
  type        = string
  default     = false
}

variable "kubernetes_version" {
  description = "The Kubernetes version of the masters. If set to 'latest' it will pull latest available version in the selected region."
  type        = string
  default     = "latest"
}

variable "logging_service" {
  description = "The logging service that the cluster should write logs to. Available options include logging.googleapis.com, logging.googleapis.com/kubernetes (beta), and none"
  type        = string
  default     = "logging.googleapis.com"
}

variable "maintenance_start_time" {
  description = "Time window specified for daily maintenance operations in RFC3339 format"
  type        = string
  default     = "05:00"
}

variable "master_authorized_networks_config" {
  description = "  The desired configuration options for master authorized networks. Omit the nested cidr_blocks attribute to disallow external access (except the cluster node IPs, which GKE automatically whitelists)\n\n  ### example format ###\n  master_authorized_networks_config = [{\n    cidr_blocks = [{\n      cidr_block   = \"10.0.0.0/8\"\n      display_name = \"example_network\"\n    }],\n  }]\n\n"
  type        = list(any)
  default     = []
}

variable "master_ipv4_cidr_block" {
  description = "(Beta) The IP range in CIDR notation to use for the hosted master network"
  type        = string
  default     = "10.0.0.0/28"
}

variable "monitoring_service" {
  description = "The monitoring service that the cluster should write metrics to. Automatically send metrics from pods in the cluster to the Google Cloud Monitoring API. VM metrics will be collected by Google Compute Engine regardless of this setting Available options include monitoring.googleapis.com, monitoring.googleapis.com/kubernetes (beta) and none"
  type        = string
  default     = "monitoring.googleapis.com"
}

variable "name" {
  description = "The name of the cluster (required)"
  type        = string
  default     = ""
}

variable "network" {
  description = "The VPC network to host the cluster in (required)"
  type        = string
  default     = ""
}

variable "network_policy" {
  description = "Enable network policy addon"
  type        = string
  default     = false
}

variable "network_project_id" {
  description = "The project ID of the shared VPC's host (for shared vpc support)"
  type        = string
  default     = ""
}

variable "node_pools" {
  description = "List of maps containing node pools"
  type        = list(any)
  default     = [{ "name" : "default-node-pool" }]
}

variable "node_pools_labels" {
  description = "Map of maps containing node labels by node-pool name"
  type        = map(any)
  default     = { "all" : {}, "default-node-pool" : {} }
}

variable "node_pools_metadata" {
  description = "Map of maps containing node metadata by node-pool name"
  type        = map(any)
  default     = { "all" : {}, "default-node-pool" : {} }
}

variable "node_pools_tags" {
  description = "Map of lists containing node network tags by node-pool name"
  type        = map(any)
  default     = { "all" : [], "default-node-pool" : [] }
}

variable "node_pools_taints" {
  description = "Map of lists containing node taints by node-pool name"
  type        = map(any)
  default     = { "all" : [], "default-node-pool" : [] }
}

variable "node_version" {
  description = "The Kubernetes version of the node pools. Defaults kubernetes_version (master) variable and can be overridden for individual node pools by setting the version key on them. Must be empyty or set the same as master at cluster creation."
  type        = string
  default     = ""
}

variable "non_masquerade_cidrs" {
  description = "List of strings in CIDR notation that specify the IP address ranges that do not use IP masquerading."
  type        = list(any)
  default     = ["10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/16"]
}

variable "project_id" {
  description = "The project ID to host the cluster in (required)"
  type        = string
  default     = ""
}

variable "region" {
  description = "The region to host the cluster in (required)"
  type        = string
  default     = ""
}

variable "regional" {
  description = "Whether is a regional cluster (zonal cluster if set false. WARNING: changing this after cluster creation is destructive!)"
  type        = string
  default     = true
}

variable "remove_default_node_pool" {
  description = "Remove default node pool while setting up the cluster"
  type        = string
  default     = false
}

variable "service_account" {
  description = "The service account to default running nodes as if not overridden in node_pools. Defaults to the compute engine default service account. May also specify create to automatically create a cluster-specific service account"
  type        = string
  default     = ""
}

variable "stub_domains" {
  description = "Map of stub domains and their resolvers to forward DNS queries for a certain domain to an external DNS server"
  type        = map(any)
  default     = {}
}

variable "subnetwork" {
  description = "The subnetwork to host the cluster in (required)"
  type        = string
  default     = ""
}

variable "zones" {
  description = "The zones to host the cluster in (optional if regional cluster / required if zonal)"
  type        = list(any)
  default     = [""]
}
