add_cluster_firewall_rules = false

authenticator_security_group = null

cloudrun = false

cluster_autoscaling = { "auto_repair" : true, "auto_upgrade" : true, "autoscaling_profile" : "BALANCED", "enabled" : false, "gpu_resources" : [], "max_cpu_cores" : 0, "max_memory_gb" : 0, "min_cpu_cores" : 0, "min_memory_gb" : 0 }

cluster_dns_domain = ""

cluster_dns_provider = "PROVIDER_UNSPECIFIED"

cluster_dns_scope = "DNS_SCOPE_UNSPECIFIED"

cluster_resource_labels = {}

compute_engine_service_account = ""

config_connector = false

create_service_account = true

database_encryption = [{ "key_name" : "", "state" : "DECRYPTED" }]

datapath_provider = "ADVANCED_DATAPATH"

default_max_pods_per_node = 110

deletion_protection = true

description = ""

disable_default_snat = false

dns_cache = false

enable_confidential_nodes = false

enable_cost_allocation = false

enable_gcfs = false

enable_intranode_visibility = false

enable_l4_ilb_subsetting = false

enable_mesh_certificates = false

enable_pod_security_policy = false

enable_private_endpoint = true

enable_shielded_nodes = true

enable_vertical_pod_autoscaling = false

filestore_csi_driver = false

firewall_inbound_ports = ["8443", "9443", "15017"]

firewall_priority = 1000

gateway_api_channel = null

gce_pd_csi_driver = true

gke_backup_agent_config = false

grant_registry_access = true

horizontal_pod_autoscaling = true

http_load_balancing = true

initial_node_count = 0

ip_range_pods = ""

ip_range_services = ""

istio = false

istio_auth = "AUTH_MUTUAL_TLS"

kubernetes_version = null

logging_service = "logging.googleapis.com/kubernetes"

maintenance_end_time = ""

maintenance_exclusions = []

maintenance_recurrence = ""

maintenance_start_time = "05:00"

master_authorized_networks = []

master_ipv4_cidr_block = "10.0.0.0/28"

monitoring_enable_managed_prometheus = false

monitoring_enable_observability_metrics = false

monitoring_enable_observability_relay = false

monitoring_enabled_components = []

monitoring_service = "monitoring.googleapis.com/kubernetes"

name = ""

network = ""

network_project_id = ""

node_pools = [{ "name" : "default-node-pool" }]

node_pools_labels = { "all" : {}, "default-node-pool" : {} }

node_pools_metadata = { "all" : {}, "default-node-pool" : {} }

node_pools_oauth_scopes = { "all" : ["https://www.googleapis.com/auth/cloud-platform"], "default-node-pool" : [] }

node_pools_resource_labels = { "all" : {}, "default-node-pool" : {} }

node_pools_tags = { "all" : [], "default-node-pool" : [] }

node_pools_taints = { "all" : [], "default-node-pool" : [] }

notification_config_topic = ""

project_id = ""

region = ""

regional = true

registry_project_ids = []

release_channel = "REGULAR"

resource_usage_export_dataset_id = ""

sandbox_enabled = false

security_posture_mode = "DISABLED"

security_posture_vulnerability_mode = null

stub_domains = {}

subnetwork = ""

timeouts = {}

upstream_nameservers = []

windows_node_pools = []

workload_config_audit_mode = "DISABLED"

workload_vulnerability_mode = ""

zones = []
