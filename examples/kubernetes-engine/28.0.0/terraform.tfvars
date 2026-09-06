add_cluster_firewall_rules = false

add_master_webhook_firewall_rules = false

add_shadow_firewall_rules = false

authenticator_security_group = null

cluster_autoscaling = { "auto_repair" : true, "auto_upgrade" : true, "disk_size" : 100, "disk_type" : "pd-standard", "enabled" : false, "gpu_resources" : [], "max_cpu_cores" : 0, "max_memory_gb" : 0, "min_cpu_cores" : 0, "min_memory_gb" : 0 }

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

description = ""

disable_default_snat = false

disable_legacy_metadata_endpoints = true

dns_cache = false

enable_binary_authorization = false

enable_cost_allocation = false

enable_kubernetes_alpha = false

enable_mesh_certificates = false

enable_network_egress_export = false

enable_resource_consumption_export = true

enable_shielded_nodes = true

enable_vertical_pod_autoscaling = false

filestore_csi_driver = false

firewall_inbound_ports = ["8443", "9443", "15017"]

firewall_priority = 1000

gateway_api_channel = null

gce_pd_csi_driver = true

gcs_fuse_csi_driver = false

gke_backup_agent_config = false

grant_registry_access = false

horizontal_pod_autoscaling = true

http_load_balancing = true

identity_namespace = "enabled"

initial_node_count = 0

ip_masq_link_local = false

ip_masq_resync_interval = "60s"

ip_range_pods = ""

ip_range_services = ""

issue_client_certificate = false

kubernetes_version = "latest"

logging_enabled_components = []

logging_service = "logging.googleapis.com/kubernetes"

maintenance_end_time = ""

maintenance_exclusions = []

maintenance_recurrence = ""

maintenance_start_time = "05:00"

master_authorized_networks = []

monitoring_enable_managed_prometheus = false

monitoring_enabled_components = []

monitoring_service = "monitoring.googleapis.com/kubernetes"

name = ""

network = ""

network_policy = false

network_policy_provider = "CALICO"

network_project_id = ""

node_metadata = "GKE_METADATA"

node_pools = [{ "name" : "default-node-pool" }]

node_pools_labels = { "all" : {}, "default-node-pool" : {} }

node_pools_linux_node_configs_sysctls = { "all" : {}, "default-node-pool" : {} }

node_pools_metadata = { "all" : {}, "default-node-pool" : {} }

node_pools_oauth_scopes = { "all" : ["https://www.googleapis.com/auth/cloud-platform"], "default-node-pool" : [] }

node_pools_resource_labels = { "all" : {}, "default-node-pool" : {} }

node_pools_tags = { "all" : [], "default-node-pool" : [] }

node_pools_taints = { "all" : [], "default-node-pool" : [] }

non_masquerade_cidrs = ["10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/16"]

notification_config_topic = ""

project_id = ""

region = null

regional = true

registry_project_ids = []

release_channel = "REGULAR"

remove_default_node_pool = false

resource_usage_export_dataset_id = ""

service_account = ""

service_account_name = ""

service_external_ips = false

shadow_firewall_rules_log_config = { "metadata" : "INCLUDE_ALL_METADATA" }

shadow_firewall_rules_priority = 999

stub_domains = {}

subnetwork = ""

timeouts = {}

upstream_nameservers = []

windows_node_pools = []

zones = []
