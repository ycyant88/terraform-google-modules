_parent_module = ""

add_cluster_firewall_rules = false

authenticator_security_group = ""

cloudrun = false

cluster_resource_labels = {}

compute_engine_service_account = ""

config_connector = false

database_encryption = [{ "key_name" : "", "state" : "DECRYPTED" }]

default_max_pods_per_node = 110

description = ""

disable_default_snat = false

dns_cache = false

enable_intranode_visibility = false

enable_network_egress_export = false

enable_pod_security_policy = false

enable_private_endpoint = true

enable_resource_consumption_export = true

enable_shielded_nodes = true

enable_vertical_pod_autoscaling = false

firewall_inbound_ports = ["8443", "9443", "15017"]

firewall_priority = 1000

gce_pd_csi_driver = true

grant_registry_access = true

horizontal_pod_autoscaling = true

http_load_balancing = true

initial_node_count = 0

ip_range_pods = ""

ip_range_services = ""

istio = false

istio_auth = "AUTH_MUTUAL_TLS"

kubernetes_version = ""

logging_service = "logging.googleapis.com/kubernetes"

maintenance_start_time = "05:00"

master_authorized_networks = []

master_ipv4_cidr_block = "10.0.0.0/28"

monitoring_service = "monitoring.googleapis.com/kubernetes"

name = ""

network = ""

network_project_id = ""

node_pools = [{ "name" : "default-node-pool" }]

node_pools_labels = { "all" : {}, "default-node-pool" : {} }

node_pools_metadata = { "all" : {}, "default-node-pool" : {} }

node_pools_oauth_scopes = { "all" : ["https://www.googleapis.com/auth/cloud-platform"], "default-node-pool" : [] }

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

skip_provisioners = false

stub_domains = {}

subnetwork = ""

upstream_nameservers = []

zones = []
