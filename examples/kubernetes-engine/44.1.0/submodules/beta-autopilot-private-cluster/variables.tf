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

variable "additional_ip_range_pods" {
  description = "List of _names_ of the additional secondary subnet ip ranges to use for pods"
  type        = list(string)
  default     = []
}

variable "additional_ip_ranges_config" {
  description = "the configuration for individual additional subnetworks attached to the cluster"
  type        = list(object({ subnetwork = string, pod_ipv4_range_names = list(string) }))
  default     = []
}

variable "allow_net_admin" {
  description = "(Optional) Enable NET_ADMIN for the cluster."
  type        = bool
  default     = null
}

variable "anonymous_authentication_config_mode" {
  description = "Allows users to restrict or enable anonymous access to the cluster. Valid values are ENABLED and LIMITED."
  type        = string
  default     = null
}

variable "authenticator_security_group" {
  description = "The name of the RBAC security group for use with Google security groups in Kubernetes RBAC. Group name must be in format gke-security-groups@yourdomain.com"
  type        = string
  default     = null
}

variable "boot_disk_kms_key" {
  description = "The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool, if not overridden in node_pools. This should be of the form projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME]. For more information about protecting resources with Cloud KMS Keys please see: https://cloud.google.com/compute/docs/disks/customer-managed-encryption"
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

variable "default_compute_class_enabled" {
  description = "Enable default compute class for Node Auto-Provisioning"
  type        = bool
  default     = null
}

variable "deletion_protection" {
  description = "Whether or not to allow Terraform to destroy the cluster."
  type        = bool
  default     = true
}

variable "deploy_using_private_endpoint" {
  description = "A toggle for Terraform and kubectl to connect to the master's internal IP address during deployment."
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

variable "disable_l4_lb_firewall_reconciliation" {
  description = "Disable L4 Load Balancer firewall reconciliation"
  type        = bool
  default     = null
}

variable "dns_allow_external_traffic" {
  description = "(Optional) Controls whether external traffic is allowed over the dns endpoint."
  type        = bool
  default     = null
}

variable "dns_cache" {
  description = "The status of the NodeLocal DNSCache addon."
  type        = bool
  default     = true
}

variable "enable_binary_authorization" {
  description = "Enable BinAuthZ Admission controller"
  type        = bool
  default     = false
}

variable "enable_cilium_clusterwide_network_policy" {
  description = "Enable Cilium Cluster Wide Network Policies on the cluster"
  type        = bool
  default     = false
}

variable "enable_confidential_nodes" {
  description = "An optional flag to enable confidential node config."
  type        = bool
  default     = false
}

variable "enable_cost_allocation" {
  description = "Enables Cost Allocation Feature and the cluster name and namespace of your GKE workloads appear in the labels field of the billing export to BigQuery"
  type        = bool
  default     = false
}

variable "enable_fqdn_network_policy" {
  description = "Enable FQDN Network Policies on the cluster"
  type        = bool
  default     = null
}

variable "enable_k8s_beta_apis" {
  description = "(Optional) - List of Kubernetes Beta APIs to enable in cluster."
  type        = list(string)
  default     = []
}

variable "enable_l4_ilb_subsetting" {
  description = "Enable L4 ILB Subsetting on the cluster"
  type        = bool
  default     = false
}

variable "enable_legacy_lustre_port" {
  description = "Set it to true for GKE cluster runs a version earlier than 1.33.2-gke.4780000. Allows the Lustre CSI driver to initialize LNet (the virtual network layer for Lustre kernel module) using port 6988. This flag is required to workaround a port conflict with the gke-metadata-server on GKE nodes"
  type        = bool
  default     = false
}

variable "enable_multi_networking" {
  description = "Whether multi-networking is enabled for this cluster"
  type        = bool
  default     = null
}

variable "enable_network_egress_export" {
  description = "Whether to enable network egress metering for this cluster. If enabled, a daemonset will be created in the cluster to meter network egress traffic."
  type        = bool
  default     = false
}

variable "enable_private_endpoint" {
  description = "Whether the master's internal IP address is used as the cluster endpoint"
  type        = bool
  default     = false
}

variable "enable_private_nodes" {
  description = "Whether nodes have internal IP addresses only"
  type        = bool
  default     = true
}

variable "enable_resource_consumption_export" {
  description = "Whether to enable resource consumption metering on this cluster. When enabled, a table will be created in the resource export BigQuery dataset to store resource consumption data. The resulting table can be joined with the resource usage table or with BigQuery billing export."
  type        = bool
  default     = true
}

variable "enable_secret_manager_addon" {
  description = "Enable the Secret Manager add-on for this cluster"
  type        = bool
  default     = false
}

variable "enable_tpu" {
  description = "Enable Cloud TPU resources in the cluster. WARNING: changing this after cluster creation is destructive!"
  type        = bool
  default     = false
}

variable "enable_vertical_pod_autoscaling" {
  description = "Vertical Pod Autoscaling automatically adjusts the resources of pods controlled by it"
  type        = bool
  default     = true
}

variable "enterprise_config" {
  description = "(Optional) Enable or disable GKE enterprise. Valid values are STANDARD and ENTERPRISE."
  type        = string
  default     = null
}

variable "filestore_csi_driver" {
  description = "The status of the Filestore CSI driver addon, which allows the usage of filestore instance as volumes"
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

variable "fleet_project" {
  description = "(Optional) Register the cluster with the fleet in this project."
  type        = string
  default     = null
}

variable "fleet_project_grant_service_agent" {
  description = "(Optional) Grant the fleet project service identity the roles/gkehub.serviceAgent and roles/gkehub.crossProjectServiceAgent roles."
  type        = bool
  default     = false
}

variable "gateway_api_channel" {
  description = "The gateway api channel of this cluster. Accepted values are CHANNEL_STANDARD and CHANNEL_DISABLED."
  type        = string
  default     = null
}

variable "gcp_public_cidrs_access_enabled" {
  description = "Allow access through Google Cloud public IP addresses"
  type        = bool
  default     = null
}

variable "gke_auto_upgrade_config_patch_mode" {
  description = "The selected auto-upgrade patch type. Accepted values are: ACCELERATED: Upgrades to the latest available patch version in a given minor and release channel."
  type        = string
  default     = null
}

variable "gke_backup_agent_config" {
  description = "Whether Backup for GKE agent is enabled for this cluster."
  type        = bool
  default     = false
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

variable "hpa_profile" {
  description = "Enable the Horizontal Pod Autoscaling profile for this cluster. Values are \"NONE\" and \"PERFORMANCE\"."
  type        = string
  default     = ""
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

variable "in_transit_encryption_config" {
  description = "Defines the config of in-transit encryption. Valid values are IN_TRANSIT_ENCRYPTION_DISABLED and IN_TRANSIT_ENCRYPTION_INTER_NODE_TRANSPARENT."
  type        = string
  default     = null
}

variable "insecure_kubelet_readonly_port_enabled" {
  description = "Whether or not to set insecure_kubelet_readonly_port_enabled for node pool defaults and autopilot clusters."
  type        = bool
  default     = null
}

variable "ip_endpoints_enabled" {
  description = "(Optional) Controls whether to allow direct IP access. Defaults to true."
  type        = bool
  default     = null
}

variable "ip_range_pods" {
  description = "The _name_ of the secondary subnet ip range to use for pods"
  type        = string
  default     = ""
}

variable "ip_range_services" {
  description = "The _name_ of the secondary subnet range to use for services. If not provided, the default 34.118.224.0/20 range will be used."
  type        = string
  default     = null
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

variable "logging_enabled_components" {
  description = "List of services to monitor: SYSTEM_COMPONENTS, APISERVER, CONTROLLER_MANAGER, KCP_CONNECTION, KCP_SSHD, KCP_HPA, SCHEDULER, and WORKLOADS. Empty list is default GKE configuration."
  type        = list(string)
  default     = []
}

variable "lustre_csi_driver" {
  description = "The status of the Lustre CSI driver addon, which allows the usage of a Lustre instances as volumes"
  type        = bool
  default     = null
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
  description = "Whether the cluster master is accessible globally (from any region) or only within the same region as the private endpoint."
  type        = bool
  default     = true
}

variable "master_ipv4_cidr_block" {
  description = "(Optional) The IP range in CIDR notation to use for the hosted master network."
  type        = string
  default     = null
}

variable "monitoring_enabled_components" {
  description = "List of services to monitor: SYSTEM_COMPONENTS, APISERVER, SCHEDULER, CONTROLLER_MANAGER, STORAGE, HPA, POD, DAEMONSET, DEPLOYMENT, STATEFULSET, KUBELET, CADVISOR, DCGM, and JOBSET. In beta provider, WORKLOADS is supported on top of those 12 values. (WORKLOADS is deprecated and removed in GKE 1.24.) KUBELET and CADVISOR are only supported in GKE 1.29.3-gke.1093000 and above. JOBSET is only supported in GKE 1.32.1-gke.1357001 and above. Empty list is default GKE configuration."
  type        = list(string)
  default     = []
}

variable "monitoring_metric_writer_role" {
  description = "The monitoring metrics writer role to assign to the GKE node service account"
  type        = string
  default     = "roles/monitoring.metricWriter"
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

variable "network_tags" {
  description = "(Optional) - List of network tags applied to autopilot and auto-provisioned node pools."
  type        = list(string)
  default     = []
}

variable "network_tier_config" {
  description = "Network tier configuration for the cluster"
  type        = string
  default     = null
}

variable "node_pools_cgroup_mode" {
  description = "Specifies the Linux cgroup mode for autopilot Kubernetes nodes in the cluster. Accepted values are CGROUP_MODE_UNSPECIFIED, CGROUP_MODE_V1, and CGROUP_MODE_V2, which determine the control group hierarchy used for resource management. Note: GKE is removing cgroup v1 support in 1.35."
  type        = string
  default     = null
}

variable "notification_config_topic" {
  description = "The desired Pub/Sub topic to which notifications will be sent by GKE. Format is projects/{project}/topics/{topic}."
  type        = string
  default     = ""
}

variable "notification_filter_event_type" {
  description = "Choose what type of notifications you want to receive. If no filters are applied, you'll receive all notification types. Can be used to filter what notifications are sent. Accepted values are UPGRADE_AVAILABLE_EVENT, UPGRADE_EVENT, and SECURITY_BULLETIN_EVENT."
  type        = list(string)
  default     = []
}

variable "private_endpoint_subnetwork" {
  description = "The subnetwork to use for the hosted master network."
  type        = string
  default     = null
}

variable "project_id" {
  description = "The project ID to host the cluster in (required)"
  type        = string
  default     = ""
}

variable "ray_operator_config" {
  description = "The Ray Operator Addon configuration for this cluster."
  type = object({
    enabled            = bool
    logging_enabled    = optional(bool, false)
    monitoring_enabled = optional(bool, false)
  })
  default = { "enabled" : false, "logging_enabled" : false, "monitoring_enabled" : false }
}

variable "rbac_binding_config" {
  description = "RBACBindingConfig allows user to restrict ClusterRoleBindings an RoleBindings that can be created."
  type = object({
    enable_insecure_binding_system_unauthenticated = optional(bool, null)
    enable_insecure_binding_system_authenticated   = optional(bool, null)
  })
  default = { "enable_insecure_binding_system_authenticated" : null, "enable_insecure_binding_system_unauthenticated" : null }
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
  description = "The release channel of this cluster. Accepted values are UNSPECIFIED, RAPID, REGULAR and STABLE. Defaults to REGULAR."
  type        = string
  default     = "REGULAR"
}

variable "resource_manager_tags" {
  description = "(Optional) - List of resource manager tags applied to autopilot and auto-provisioned node pools. A maximum of 5 tags can be specified. Tags must be in one of these formats: \"tagKeys/{tag_key_id}\"=\"tagValues/{tag_value_id}\", \"{org_id}/{tag_key_name}\"=\"{tag_value_name}\", \"{project_id}/{tag_key_name}\"=\"{tag_value_name}\"."
  type        = map(string)
  default     = {}
}

variable "resource_usage_export_dataset_id" {
  description = "The ID of a BigQuery Dataset for using BigQuery as the destination of resource usage export."
  type        = string
  default     = ""
}

variable "security_posture_mode" {
  description = "Security posture mode. Accepted values are DISABLED and BASIC. Defaults to DISABLED."
  type        = string
  default     = "DISABLED"
}

variable "security_posture_vulnerability_mode" {
  description = "Security posture vulnerability mode. Accepted values are VULNERABILITY_DISABLED, VULNERABILITY_BASIC, and VULNERABILITY_ENTERPRISE. Defaults to VULNERABILITY_DISABLED."
  type        = string
  default     = "VULNERABILITY_DISABLED"
}

variable "service_account" {
  description = "The service account to run nodes as if not overridden in node_pools. The create_service_account variable default value (true) will cause a cluster-specific service account to be created. This service account should already exists and it will be used by the node pools. If you wish to only override the service account name, you can use service_account_name variable."
  type        = string
  default     = ""
}

variable "service_account_name" {
  description = "The name of the service account that will be created if create_service_account is true. If you wish to use an existing service account, use service_account variable."
  type        = string
  default     = ""
}

variable "service_external_ips" {
  description = "Whether external ips specified by a service will be allowed in this cluster"
  type        = bool
  default     = false
}

variable "shadow_firewall_rules_log_config" {
  description = "The log_config for shadow firewall rules. You can set this variable to null to disable logging."
  type = object({
    metadata = string
  })
  default = { "metadata" : "INCLUDE_ALL_METADATA" }
}

variable "shadow_firewall_rules_priority" {
  description = "The firewall priority of GKE shadow firewall rules. The priority should be less than default firewall, which is 1000."
  type        = number
  default     = 999
}

variable "stack_type" {
  description = "The stack type to use for this cluster. Either IPV4 or IPV4_IPV6. Defaults to IPV4."
  type        = string
  default     = "IPV4"
}

variable "stateful_ha" {
  description = "Whether the Stateful HA Addon is enabled for this cluster."
  type        = bool
  default     = false
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

variable "total_egress_bandwidth_tier" {
  description = "Specifies the total network bandwidth tier for NodePools in the cluster. Valid values are TIER_UNSPECIFIED and TIER_1. Defaults to TIER_UNSPECIFIED."
  type        = string
  default     = null
}

variable "workload_config_audit_mode" {
  description = "(beta) Sets which mode of auditing should be used for the cluster's workloads. Accepted values are DISABLED, BASIC."
  type        = string
  default     = "DISABLED"
}

variable "workload_vulnerability_mode" {
  description = "(beta) Sets which mode to use for Protect workload vulnerability scanning feature. Accepted values are DISABLED, BASIC."
  type        = string
  default     = ""
}

variable "zones" {
  description = "The zones to host the cluster in (optional if regional cluster / required if zonal)"
  type        = list(string)
  default     = []
}
