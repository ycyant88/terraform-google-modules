variable "add_cluster_firewall_rules" {
  description = "Create additional firewall rules"
  type        = bool
  default     = false
}

variable "authenticator_security_group" {
  description = "The name of the RBAC security group for use with Google security groups in Kubernetes RBAC. Group name must be in format gke-security-groups@yourdomain.com"
  type        = string
  default     = null
}

variable "cloudrun" {
  description = "(Beta) Enable CloudRun addon"
  type        = bool
  default     = false
}

variable "cluster_autoscaling" {
  description = "Cluster autoscaling configuration. See [more details](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters#clusterautoscaling)"
  type = object({
    enabled             = bool
    autoscaling_profile = string
    min_cpu_cores       = number
    max_cpu_cores       = number
    min_memory_gb       = number
    max_memory_gb       = number
    gpu_resources       = list(object({ resource_type = string, minimum = number, maximum = number }))
    auto_repair         = bool
    auto_upgrade        = bool
  })
  default = { "auto_repair" : true, "auto_upgrade" : true, "autoscaling_profile" : "BALANCED", "enabled" : false, "gpu_resources" : [], "max_cpu_cores" : 0, "max_memory_gb" : 0, "min_cpu_cores" : 0, "min_memory_gb" : 0 }
}

variable "cluster_dns_domain" {
  description = "The suffix used for all cluster service records."
  type        = string
  default     = ""
}

variable "cluster_dns_provider" {
  description = "Which in-cluster DNS provider should be used. PROVIDER_UNSPECIFIED (default) or PLATFORM_DEFAULT or CLOUD_DNS."
  type        = string
  default     = "PROVIDER_UNSPECIFIED"
}

variable "cluster_dns_scope" {
  description = "The scope of access to cluster DNS records. DNS_SCOPE_UNSPECIFIED (default) or CLUSTER_SCOPE or VPC_SCOPE. "
  type        = string
  default     = "DNS_SCOPE_UNSPECIFIED"
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

variable "config_connector" {
  description = "(Beta) Whether ConfigConnector is enabled for this cluster."
  type        = bool
  default     = false
}

variable "database_encryption" {
  description = "Application-layer Secrets Encryption settings. The object format is {state = string, key_name = string}. Valid values of state are: \"ENCRYPTED\"; \"DECRYPTED\". key_name is the name of a CloudKMS key."
  type        = list(object({ state = string, key_name = string }))
  default     = [{ "key_name" : "", "state" : "DECRYPTED" }]
}

variable "datapath_provider" {
  description = "The desired datapath provider for this cluster. By default, ADVANCED_DATAPATH enables Dataplane-V2 feature. DATAPATH_PROVIDER_UNSPECIFIED enables the IPTables-based kube-proxy implementation as a fallback since upgrading to V2 requires a cluster re-creation."
  type        = string
  default     = "ADVANCED_DATAPATH"
}

variable "default_max_pods_per_node" {
  description = "The maximum number of pods to schedule per node"
  type        = number
  default     = 110
}

variable "description" {
  description = "The description of the cluster"
  type        = string
  default     = ""
}

variable "disable_default_snat" {
  description = "Whether to disable the default SNAT to support the private use of public IP addresses"
  type        = bool
  default     = false
}

variable "dns_cache" {
  description = "(Beta) The status of the NodeLocal DNSCache addon."
  type        = bool
  default     = false
}

variable "enable_cost_allocation" {
  description = "Enables Cost Allocation Feature and the cluster name and namespace of your GKE workloads appear in the labels field of the billing export to BigQuery"
  type        = bool
  default     = false
}

variable "enable_intranode_visibility" {
  description = "Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network"
  type        = bool
  default     = false
}

variable "enable_pod_security_policy" {
  description = "enabled - Enable the PodSecurityPolicy controller for this cluster. If enabled, pods must be valid under a PodSecurityPolicy to be created."
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

variable "filestore_csi_driver" {
  description = "The status of the Filestore CSI driver addon, which allows the usage of filestore instance as volumes"
  type        = bool
  default     = false
}

variable "firewall_inbound_ports" {
  description = "List of TCP ports for admission/webhook controllers"
  type        = list(string)
  default     = ["8443", "9443", "15017"]
}

variable "firewall_priority" {
  description = "Priority rule for firewall rules"
  type        = number
  default     = 1000
}

variable "gateway_api_channel" {
  description = "The gateway api channel of this cluster. Accepted values are CHANNEL_STANDARD and CHANNEL_DISABLED."
  type        = string
  default     = null
}

variable "gce_pd_csi_driver" {
  description = "(Beta) Whether this cluster should enable the Google Compute Engine Persistent Disk Container Storage Interface (CSI) Driver."
  type        = bool
  default     = true
}

variable "gke_backup_agent_config" {
  description = "(Beta) Whether Backup for GKE agent is enabled for this cluster."
  type        = bool
  default     = false
}

variable "grant_registry_access" {
  description = "Grants created cluster-specific service account storage.objectViewer role."
  type        = bool
  default     = true
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
  type        = bool
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
  default     = null
}

variable "logging_service" {
  description = "The logging service that the cluster should write logs to. Available options include logging.googleapis.com, logging.googleapis.com/kubernetes (beta), and none"
  type        = string
  default     = "logging.googleapis.com/kubernetes"
}

variable "maintenance_end_time" {
  description = "Time window specified for recurring maintenance operations in RFC3339 format"
  type        = string
  default     = ""
}

variable "maintenance_exclusions" {
  description = "List of maintenance exclusions. A cluster can have up to three"
  type        = list(object({ name = string, start_time = string, end_time = string, exclusion_scope = string }))
  default     = []
}

variable "maintenance_recurrence" {
  description = "Frequency of the recurring maintenance window in RFC5545 format."
  type        = string
  default     = ""
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

variable "monitoring_enable_managed_prometheus" {
  description = "(Beta) Configuration for Managed Service for Prometheus. Whether or not the managed collection is enabled."
  type        = bool
  default     = false
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

variable "node_pools_resource_labels" {
  description = "Map of maps containing resource labels by node-pool name"
  type        = map(map(string))
  default     = { "all" : {}, "default-node-pool" : {} }
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

variable "notification_config_topic" {
  description = "The desired Pub/Sub topic to which notifications will be sent by GKE. Format is projects/{project}/topics/{topic}."
  type        = string
  default     = ""
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

variable "registry_project_ids" {
  description = "Projects holding Google Container Registries. If empty, we use the cluster project. If a service account is created and the grant_registry_access variable is set to true, the storage.objectViewer role is assigned on these projects."
  type        = list(string)
  default     = []
}

variable "release_channel" {
  description = "The release channel of this cluster. Accepted values are UNSPECIFIED, RAPID, REGULAR and STABLE. Defaults to REGULAR."
  type        = string
  default     = "REGULAR"
}

variable "resource_usage_export_dataset_id" {
  description = "The dataset id for which network egress metering for this cluster will be enabled. If enabled, a daemonset will be created in the cluster to meter network egress traffic."
  type        = string
  default     = ""
}

variable "sandbox_enabled" {
  description = "(Beta) Enable GKE Sandbox (Do not forget to set image_type = COS_CONTAINERD to use it)."
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

variable "timeouts" {
  description = "Timeout for cluster operations."
  type        = map(string)
  default     = {}
}

variable "upstream_nameservers" {
  description = "If specified, the values replace the nameservers taken by default from the node\u2019s /etc/resolv.conf"
  type        = list(string)
  default     = []
}

variable "windows_node_pools" {
  description = "List of maps containing node pools"
  type        = list(map(string))
  default     = []
}

variable "zones" {
  description = "The zones to host the cluster in"
  type        = list(string)
  default     = []
}
