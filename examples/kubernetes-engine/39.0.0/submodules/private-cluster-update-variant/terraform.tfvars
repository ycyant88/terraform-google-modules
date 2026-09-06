add_cluster_firewall_rules = false

add_master_webhook_firewall_rules = false

add_shadow_firewall_rules = false

additional_ip_range_pods = []

additional_pod_ranges_config = []

additive_vpc_scope_dns_domain = ""

authenticator_security_group = null

boot_disk_kms_key = null

cluster_autoscaling = { "auto_repair" : true, "auto_upgrade" : true, "autoscaling_profile" : "BALANCED", "disk_size" : 100, "disk_type" : "pd-standard", "enable_integrity_monitoring" : true, "enable_secure_boot" : false, "enabled" : false, "gpu_resources" : [], "image_type" : "COS_CONTAINERD", "max_cpu_cores" : 0, "max_memory_gb" : 0, "min_cpu_cores" : 0, "min_memory_gb" : 0 }

cluster_dns_domain = ""

cluster_dns_provider = "PROVIDER_UNSPECIFIED"

cluster_dns_scope = "DNS_SCOPE_UNSPECIFIED"

cluster_ipv4_cidr = null

cluster_resource_labels = {}

config_connector = false

configure_ip_masq = false

create_service_account = true

database_encryption = [{ "key_name" : "", "state" : "DECRYPTED" }]

datapath_provider = "DATAPATH_PROVIDER_UNSPECIFIED"

default_max_pods_per_node = 110

deletion_protection = true

deploy_using_private_endpoint = false

description = ""

disable_default_snat = false

disable_l4_lb_firewall_reconciliation = null

disable_legacy_metadata_endpoints = true

dns_allow_external_traffic = null

dns_cache = false

enable_binary_authorization = false

enable_cilium_clusterwide_network_policy = false

enable_confidential_nodes = false

enable_cost_allocation = false

enable_default_node_pools_metadata = true

enable_fqdn_network_policy = null

enable_gcfs = false

enable_identity_service = false

enable_intranode_visibility = false

enable_k8s_beta_apis = []

enable_kubernetes_alpha = false

enable_l4_ilb_subsetting = false

enable_legacy_lustre_port = false

enable_mesh_certificates = false

enable_multi_networking = null

enable_network_egress_export = false

enable_private_endpoint = false

enable_private_nodes = true

enable_resource_consumption_export = true

enable_secret_manager_addon = false

enable_shielded_nodes = true

enable_tpu = false

enable_vertical_pod_autoscaling = false

enterprise_config = null

filestore_csi_driver = false

firewall_inbound_ports = ["8443", "9443", "15017"]

firewall_priority = 1000

fleet_project = null

gateway_api_channel = null

gce_pd_csi_driver = true

gcp_public_cidrs_access_enabled = null

gcs_fuse_csi_driver = false

gke_auto_upgrade_config_patch_mode = null

gke_backup_agent_config = false

grant_registry_access = false

horizontal_pod_autoscaling = true

hpa_profile = ""

http_load_balancing = true

identity_namespace = "enabled"

in_transit_encryption_config = null

initial_node_count = 0

insecure_kubelet_readonly_port_enabled = null

ip_endpoints_enabled = null

ip_masq_link_local = false

ip_masq_resync_interval = "60s"

ip_range_pods = ""

ip_range_services = null

issue_client_certificate = false

kubernetes_version = "latest"

logging_enabled_components = []

logging_service = "logging.googleapis.com/kubernetes"

logging_variant = null

lustre_csi_driver = null

maintenance_end_time = ""

maintenance_exclusions = []

maintenance_recurrence = ""

maintenance_start_time = "05:00"

master_authorized_networks = []

master_global_access_enabled = true

master_ipv4_cidr_block = null

monitoring_enable_managed_prometheus = null

monitoring_enable_observability_metrics = false

monitoring_enable_observability_relay = false

monitoring_enabled_components = []

monitoring_metric_writer_role = "roles/monitoring.metricWriter"

monitoring_service = "monitoring.googleapis.com/kubernetes"

name = ""

network = ""

network_policy = false

network_policy_provider = "CALICO"

network_project_id = ""

network_tags = []

node_metadata = "GKE_METADATA"

node_pools = [{ "name" : "default-node-pool" }]

node_pools_cgroup_mode = { "all" : "", "default-node-pool" : "" }

node_pools_hugepage_size_1g = { "all" : "", "default-node-pool" : "" }

node_pools_hugepage_size_2m = { "all" : "", "default-node-pool" : "" }

node_pools_labels = { "all" : {}, "default-node-pool" : {} }

node_pools_linux_node_configs_sysctls = { "all" : {}, "default-node-pool" : {} }

node_pools_metadata = { "all" : {}, "default-node-pool" : {} }

node_pools_oauth_scopes = { "all" : ["https://www.googleapis.com/auth/cloud-platform"], "default-node-pool" : [] }

node_pools_resource_labels = { "all" : {}, "default-node-pool" : {} }

node_pools_resource_manager_tags = { "all" : {}, "default-node-pool" : {} }

node_pools_tags = { "all" : [], "default-node-pool" : [] }

node_pools_taints = { "all" : [], "default-node-pool" : [] }

non_masquerade_cidrs = ["10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/16"]

notification_config_topic = ""

notification_filter_event_type = []

parallelstore_csi_driver = null

private_endpoint_subnetwork = null

project_id = ""

ray_operator_config = { "enabled" : false, "logging_enabled" : false, "monitoring_enabled" : false }

rbac_binding_config = { "enable_insecure_binding_system_authenticated" : null, "enable_insecure_binding_system_unauthenticated" : null }

region = null

regional = true

registry_project_ids = []

release_channel = "REGULAR"

remove_default_node_pool = false

resource_usage_export_dataset_id = ""

security_posture_mode = "DISABLED"

security_posture_vulnerability_mode = "VULNERABILITY_DISABLED"

service_account = ""

service_account_name = ""

service_external_ips = false

shadow_firewall_rules_log_config = { "metadata" : "INCLUDE_ALL_METADATA" }

shadow_firewall_rules_priority = 999

stack_type = "IPV4"

stateful_ha = false

stub_domains = {}

subnetwork = ""

timeouts = {}

total_egress_bandwidth_tier = null

upstream_nameservers = []

windows_node_pools = []

zones = []
