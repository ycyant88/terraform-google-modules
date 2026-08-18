add_cluster_firewall_rules = false

add_master_webhook_firewall_rules = false

add_shadow_firewall_rules = false

authenticator_security_group = ""

cloudrun = false

cloudrun_load_balancer_type = ""

cluster_autoscaling = { "autoscaling_profile" : "BALANCED", "enabled" : false, "gpu_resources" : [], "max_cpu_cores" : 0, "max_memory_gb" : 0, "min_cpu_cores" : 0, "min_memory_gb" : 0 }

cluster_ipv4_cidr = ""

cluster_resource_labels = {}

cluster_telemetry_type = ""

config_connector = false

configure_ip_masq = false

create_service_account = true

database_encryption = [{ "key_name" : "", "state" : "DECRYPTED" }]

datapath_provider = "DATAPATH_PROVIDER_UNSPECIFIED"

default_max_pods_per_node = 110

deploy_using_private_endpoint = false

description = ""

disable_default_snat = false

disable_legacy_metadata_endpoints = true

dns_cache = false

enable_binary_authorization = false

enable_confidential_nodes = false

enable_identity_service = false

enable_intranode_visibility = false

enable_kubernetes_alpha = false

enable_l4_ilb_subsetting = false

enable_network_egress_export = false

enable_pod_security_policy = false

enable_private_endpoint = false

enable_private_nodes = false

enable_resource_consumption_export = true

enable_shielded_nodes = true

enable_tpu = false

enable_vertical_pod_autoscaling = false

filestore_csi_driver = false

firewall_inbound_ports = ["8443", "9443", "15017"]

firewall_priority = 1000

gce_pd_csi_driver = false

gcloud_upgrade = false

grant_registry_access = false

horizontal_pod_autoscaling = true

http_load_balancing = true

identity_namespace = "enabled"

impersonate_service_account = ""

initial_node_count = 0

ip_masq_link_local = false

ip_masq_resync_interval = "60s"

ip_range_pods = ""

ip_range_services = ""

issue_client_certificate = false

istio = false

istio_auth = "AUTH_MUTUAL_TLS"

kalm_config = false

kubernetes_version = "latest"

logging_enabled_components = []

logging_service = "logging.googleapis.com/kubernetes"

maintenance_end_time = ""

maintenance_exclusions = []

maintenance_recurrence = ""

maintenance_start_time = "05:00"

master_authorized_networks = []

master_global_access_enabled = true

master_ipv4_cidr_block = "10.0.0.0/28"

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

node_pools_tags = { "all" : [], "default-node-pool" : [] }

node_pools_taints = { "all" : [], "default-node-pool" : [] }

non_masquerade_cidrs = ["10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/16"]

notification_config_topic = ""

project_id = ""

region = ""

regional = true

registry_project_ids = []

release_channel = ""

remove_default_node_pool = false

resource_usage_export_dataset_id = ""

sandbox_enabled = false

service_account = ""

shadow_firewall_rules_priority = 999

skip_provisioners = false

stub_domains = {}

subnetwork = ""

upstream_nameservers = []

zones = []
