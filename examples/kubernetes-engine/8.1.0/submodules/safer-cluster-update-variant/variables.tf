variable "authenticator_security_group" {
  description = "The name of the RBAC security group for use with Google security groups in Kubernetes RBAC. Group name must be in format gke-security-groups@yourdomain.com"
  type        = string
  default     = ""
}

variable "cloudrun" {
  description = "(Beta) Enable CloudRun addon"
  type        = string
  default     = false
}

variable "cluster_resource_labels" {
  description = "The GCE resource labels (a map of key/value pairs) to be applied to the cluster"
  type        = map(string)
  default     = {}
}

variable "compute_engine_service_account" {
  description = "Use the given service account for nodes rather than creating a new dedicated service account."
  type        = string
  default     = ""
}

variable "database_encryption" {
  description = "Application-layer Secrets Encryption settings. The object format is {state = string, key_name = string}. Valid values of state are: \"ENCRYPTED\"; \"DECRYPTED\". key_name is the name of a CloudKMS key."
  type        = list(object({ state = string, key_name = string }))
  default     = [{ "key_name" : "", "state" : "DECRYPTED" }]
}

variable "default_max_pods_per_node" {
  description = "The maximum number of pods to schedule per node"
  type        = string
  default     = 110
}

variable "description" {
  description = "The description of the cluster"
  type        = string
  default     = ""
}

variable "dns_cache" {
  description = "(Beta) The status of the NodeLocal DNSCache addon."
  type        = bool
  default     = false
}

variable "enable_intranode_visibility" {
  description = "Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network"
  type        = bool
  default     = false
}

variable "enable_private_endpoint" {
  description = "When true, the cluster's private endpoint is used as the cluster endpoint and access through the public endpoint is disabled. When false, either endpoint can be used. This field only applies to private clusters, when enable_private_nodes is true"
  type        = bool
  default     = true
}

variable "enable_shielded_nodes" {
  description = "Enable Shielded Nodes features on all nodes in this cluster."
  type        = bool
  default     = true
}

variable "enable_vertical_pod_autoscaling" {
  description = "Vertical Pod Autoscaling automatically adjusts the resources of pods controlled by it"
  type        = bool
  default     = false
}

variable "grant_registry_access" {
  description = "Grants created cluster-specific service account storage.objectViewer role."
  type        = bool
  default     = false
}

variable "horizontal_pod_autoscaling" {
  description = "Enable horizontal pod autoscaling addon"
  type        = bool
  default     = true
}

variable "http_load_balancing" {
  description = "Enable httpload balancer addon. The addon allows whoever can create Ingress objects to expose an application to a public IP. Network policies or Gatekeeper policies should be used to verify that only authorized applications are exposed."
  type        = bool
  default     = true
}

variable "initial_node_count" {
  description = "The number of nodes to create in this cluster's default node pool."
  type        = number
  default     = 0
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

variable "istio" {
  description = "(Beta) Enable Istio addon"
  type        = string
  default     = false
}

variable "istio_auth" {
  description = "(Beta) The authentication type between services in Istio."
  type        = string
  default     = "AUTH_MUTUAL_TLS"
}

variable "kubernetes_version" {
  description = "The Kubernetes version of the masters. If set to 'latest' it will pull latest available version in the selected region. The module enforces certain minimum versions to ensure that specific features are available. "
  type        = string
  default     = "latest"
}

variable "logging_service" {
  description = "The logging service that the cluster should write logs to. Available options include logging.googleapis.com, logging.googleapis.com/kubernetes (beta), and none"
  type        = string
  default     = "logging.googleapis.com/kubernetes"
}

variable "maintenance_start_time" {
  description = "Time window specified for daily maintenance operations in RFC3339 format"
  type        = string
  default     = "05:00"
}

variable "master_authorized_networks" {
  description = "List of master authorized networks. If none are provided, disallow external access (except the cluster node IPs, which GKE automatically whitelists)."
  type        = list(object({ cidr_block = string, display_name = string }))
  default     = []
}

variable "master_ipv4_cidr_block" {
  description = "The IP range in CIDR notation to use for the hosted master network"
  type        = string
  default     = "10.0.0.0/28"
}

variable "monitoring_service" {
  description = "The monitoring service that the cluster should write metrics to. Automatically send metrics from pods in the cluster to the Google Cloud Monitoring API. VM metrics will be collected by Google Compute Engine regardless of this setting Available options include monitoring.googleapis.com, monitoring.googleapis.com/kubernetes (beta) and none"
  type        = string
  default     = "monitoring.googleapis.com/kubernetes"
}

variable "name" {
  description = "The name of the cluster"
  type        = string
  default     = ""
}

variable "network" {
  description = "The VPC network to host the cluster in"
  type        = string
  default     = ""
}

variable "network_project_id" {
  description = "The project ID of the shared VPC's host (for shared vpc support)"
  type        = string
  default     = ""
}

variable "node_pools" {
  description = "List of maps containing node pools"
  type        = list(map(string))
  default     = [{ "name" : "default-node-pool" }]
}

variable "node_pools_labels" {
  description = "Map of maps containing node labels by node-pool name"
  type        = map(map(string))
  default     = { "all" : {}, "default-node-pool" : {} }
}

variable "node_pools_metadata" {
  description = "Map of maps containing node metadata by node-pool name"
  type        = map(map(string))
  default     = { "all" : {}, "default-node-pool" : {} }
}

variable "node_pools_oauth_scopes" {
  description = "Map of lists containing node oauth scopes by node-pool name"
  type        = map(list(string))
  default     = { "all" : ["https://www.googleapis.com/auth/cloud-platform"], "default-node-pool" : [] }
}

variable "node_pools_tags" {
  description = "Map of lists containing node network tags by node-pool name"
  type        = map(list(string))
  default     = { "all" : [], "default-node-pool" : [] }
}

variable "node_pools_taints" {
  description = "Map of lists containing node taints by node-pool name"
  type        = map(list(object({ key = string, value = string, effect = string })))
  default     = { "all" : [], "default-node-pool" : [] }
}

variable "node_version" {
  description = "The Kubernetes version of the node pools. Defaults kubernetes_version (master) variable and can be overridden for individual node pools by setting the version key on them. Must be empyty or set the same as master at cluster creation."
  type        = string
  default     = ""
}

variable "pod_security_policy_config" {
  description = "enabled - Enable the PodSecurityPolicy controller for this cluster. If enabled, pods must be valid under a PodSecurityPolicy to be created."
  type        = list(object({ enabled = bool }))
  default     = [{ "enabled" : true }]
}

variable "project_id" {
  description = "The project ID to host the cluster in"
  type        = string
  default     = ""
}

variable "region" {
  description = "The region to host the cluster in"
  type        = string
  default     = ""
}

variable "regional" {
  description = "Whether is a regional cluster (zonal cluster if set false. WARNING: changing this after cluster creation is destructive!)"
  type        = bool
  default     = true
}

variable "registry_project_id" {
  description = "Project holding the Google Container Registry. If empty, we use the cluster project. If grant_registry_access is true, storage.objectViewer role is assigned on this project."
  type        = string
  default     = ""
}

variable "resource_usage_export_dataset_id" {
  description = "The dataset id for which network egress metering for this cluster will be enabled. If enabled, a daemonset will be created in the cluster to meter network egress traffic."
  type        = string
  default     = ""
}

variable "sandbox_enabled" {
  description = "(Beta) Enable GKE Sandbox (Do not forget to set image_type = COS_CONTAINERD and node_version = 1.12.7-gke.17 or later to use it)."
  type        = bool
  default     = false
}

variable "skip_provisioners" {
  description = "Flag to skip all local-exec provisioners. It breaks stub_domains and upstream_nameservers variables functionality."
  type        = bool
  default     = false
}

variable "stub_domains" {
  description = "Map of stub domains and their resolvers to forward DNS queries for a certain domain to an external DNS server"
  type        = map(list(string))
  default     = {}
}

variable "subnetwork" {
  description = "The subnetwork to host the cluster in"
  type        = string
  default     = ""
}

variable "upstream_nameservers" {
  description = "If specified, the values replace the nameservers taken by default from the node\u2019s /etc/resolv.conf"
  type        = list(string)
  default     = []
}

variable "zones" {
  description = "The zones to host the cluster in"
  type        = list(string)
  default     = []
}
