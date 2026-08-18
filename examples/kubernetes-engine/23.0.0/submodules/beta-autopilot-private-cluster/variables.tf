variable "add_cluster_firewall_rules" {
  description = "Create additional firewall rules"
  type        = bool
  default     = false
}

variable "add_master_webhook_firewall_rules" {
  description = "Create master_webhook firewall rules for ports defined in firewall_inbound_ports"
  type        = bool
  default     = false
}

variable "add_shadow_firewall_rules" {
  description = "Create GKE shadow firewall (the same as default firewall rules with firewall logs enabled)."
  type        = bool
  default     = false
}

variable "authenticator_security_group" {
  description = "The name of the RBAC security group for use with Google security groups in Kubernetes RBAC. Group name must be in format gke-security-groups@yourdomain.com"
  type        = string
  default     = null
}

variable "cluster_ipv4_cidr" {
  description = "The IP address range of the kubernetes pods in this cluster. Default is an automatically assigned CIDR."
  type        = string
  default     = null
}

variable "cluster_resource_labels" {
  description = "The GCE resource labels (a map of key/value pairs) to be applied to the cluster"
  type        = map(string)
  default     = {}
}

variable "cluster_telemetry_type" {
  description = "Available options include ENABLED, DISABLED, and SYSTEM_ONLY"
  type        = string
  default     = null
}

variable "configure_ip_masq" {
  description = "Enables the installation of ip masquerading, which is usually no longer required when using aliasied IP addresses. IP masquerading uses a kubectl call, so when you have a private cluster, you will need access to the API server."
  type        = bool
  default     = false
}

variable "create_service_account" {
  description = "Defines if service account specified to run nodes should be created."
  type        = bool
  default     = true
}

variable "database_encryption" {
  description = "Application-layer Secrets Encryption settings. The object format is {state = string, key_name = string}. Valid values of state are: \"ENCRYPTED\"; \"DECRYPTED\". key_name is the name of a CloudKMS key."
  type        = list(object({ state = string, key_name = string }))
  default     = [{ "key_name" : "", "state" : "DECRYPTED" }]
}

variable "datapath_provider" {
  description = "The desired datapath provider for this cluster. By default, DATAPATH_PROVIDER_UNSPECIFIED enables the IPTables-based kube-proxy implementation. ADVANCED_DATAPATH enables Dataplane-V2 feature."
  type        = string
  default     = "DATAPATH_PROVIDER_UNSPECIFIED"
}

variable "deploy_using_private_endpoint" {
  description = "(Beta) A toggle for Terraform and kubectl to connect to the master's internal IP address during deployment."
  type        = bool
  default     = false
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
  description = "The status of the NodeLocal DNSCache addon."
  type        = bool
  default     = true
}

variable "enable_confidential_nodes" {
  description = "An optional flag to enable confidential node config."
  type        = bool
  default     = false
}

variable "enable_network_egress_export" {
  description = "Whether to enable network egress metering for this cluster. If enabled, a daemonset will be created in the cluster to meter network egress traffic."
  type        = bool
  default     = false
}

variable "enable_private_endpoint" {
  description = "(Beta) Whether the master's internal IP address is used as the cluster endpoint"
  type        = bool
  default     = false
}

variable "enable_private_nodes" {
  description = "(Beta) Whether nodes have internal IP addresses only"
  type        = bool
  default     = false
}

variable "enable_resource_consumption_export" {
  description = "Whether to enable resource consumption metering on this cluster. When enabled, a table will be created in the resource export BigQuery dataset to store resource consumption data. The resulting table can be joined with the resource usage table or with BigQuery billing export."
  type        = bool
  default     = true
}

variable "enable_tpu" {
  description = "Enable Cloud TPU resources in the cluster. WARNING: changing this after cluster creation is destructive!"
  type        = bool
  default     = false
}

variable "enable_vertical_pod_autoscaling" {
  description = "Vertical Pod Autoscaling automatically adjusts the resources of pods controlled by it"
  type        = bool
  default     = false
}

variable "firewall_inbound_ports" {
  description = "List of TCP ports for admission/webhook controllers. Either flag add_master_webhook_firewall_rules or add_cluster_firewall_rules (also adds egress rules) must be set to true for inbound-ports firewall rules to be applied."
  type        = list(string)
  default     = ["8443", "9443", "15017"]
}

variable "firewall_priority" {
  description = "Priority rule for firewall rules"
  type        = number
  default     = 1000
}

variable "grant_registry_access" {
  description = "Grants created cluster-specific service account storage.objectViewer and artifactregistry.reader roles."
  type        = bool
  default     = false
}

variable "horizontal_pod_autoscaling" {
  description = "Enable horizontal pod autoscaling addon"
  type        = bool
  default     = true
}

variable "http_load_balancing" {
  description = "Enable httpload balancer addon"
  type        = bool
  default     = true
}

variable "identity_namespace" {
  description = "The workload pool to attach all Kubernetes service accounts to. (Default value of enabled automatically sets project-based pool [project_id].svc.id.goog)"
  type        = string
  default     = "enabled"
}

variable "ip_masq_link_local" {
  description = "Whether to masquerade traffic to the link-local prefix (169.254.0.0/16)."
  type        = bool
  default     = false
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

variable "issue_client_certificate" {
  description = "Issues a client certificate to authenticate to the cluster endpoint. To maximize the security of your cluster, leave this option disabled. Client certificates don't automatically rotate and aren't easily revocable. WARNING: changing this after cluster creation is destructive!"
  type        = bool
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
  description = "Time window specified for daily or recurring maintenance operations in RFC3339 format"
  type        = string
  default     = "05:00"
}

variable "master_authorized_networks" {
  description = "List of master authorized networks. If none are provided, disallow external access (except the cluster node IPs, which GKE automatically whitelists)."
  type        = list(object({ cidr_block = string, display_name = string }))
  default     = []
}

variable "master_global_access_enabled" {
  description = "(Beta) Whether the cluster master is accessible globally (from any region) or only within the same region as the private endpoint."
  type        = bool
  default     = true
}

variable "master_ipv4_cidr_block" {
  description = "(Beta) The IP range in CIDR notation to use for the hosted master network"
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
  description = "The name of the cluster (required)"
  type        = string
  default     = ""
}

variable "network" {
  description = "The VPC network to host the cluster in (required)"
  type        = string
  default     = ""
}

variable "network_project_id" {
  description = "The project ID of the shared VPC's host (for shared vpc support)"
  type        = string
  default     = ""
}

variable "non_masquerade_cidrs" {
  description = "List of strings in CIDR notation that specify the IP address ranges that do not use IP masquerading."
  type        = list(string)
  default     = ["10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/16"]
}

variable "notification_config_topic" {
  description = "The desired Pub/Sub topic to which notifications will be sent by GKE. Format is projects/{project}/topics/{topic}."
  type        = string
  default     = ""
}

variable "project_id" {
  description = "The project ID to host the cluster in (required)"
  type        = string
  default     = ""
}

variable "region" {
  description = "The region to host the cluster in (optional if zonal cluster / required if regional)"
  type        = string
  default     = null
}

variable "regional" {
  description = "Whether is a regional cluster (zonal cluster if set false. WARNING: changing this after cluster creation is destructive!)"
  type        = bool
  default     = true
}

variable "registry_project_ids" {
  description = "Projects holding Google Container Registries. If empty, we use the cluster project. If a service account is created and the grant_registry_access variable is set to true, the storage.objectViewer and artifactregsitry.reader roles are assigned on these projects."
  type        = list(string)
  default     = []
}

variable "release_channel" {
  description = "The release channel of this cluster. Accepted values are UNSPECIFIED, RAPID, REGULAR and STABLE. Defaults to UNSPECIFIED."
  type        = string
  default     = null
}

variable "resource_usage_export_dataset_id" {
  description = "The ID of a BigQuery Dataset for using BigQuery as the destination of resource usage export."
  type        = string
  default     = ""
}

variable "service_account" {
  description = "The service account to run nodes as if not overridden in node_pools. The create_service_account variable default value (true) will cause a cluster-specific service account to be created."
  type        = string
  default     = ""
}

variable "shadow_firewall_rules_priority" {
  description = "The firewall priority of GKE shadow firewall rules. The priority should be less than default firewall, which is 1000."
  type        = number
  default     = 999
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
  description = "The subnetwork to host the cluster in (required)"
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

variable "zones" {
  description = "The zones to host the cluster in (optional if regional cluster / required if zonal)"
  type        = list(string)
  default     = []
}
