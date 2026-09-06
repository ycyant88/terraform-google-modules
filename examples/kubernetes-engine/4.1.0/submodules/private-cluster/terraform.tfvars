basic_auth_password = ""

basic_auth_username = ""

cluster_ipv4_cidr = ""

cluster_resource_labels = {}

configure_ip_masq = false

deploy_using_private_endpoint = false

description = ""

disable_legacy_metadata_endpoints = true

enable_private_endpoint = false

enable_private_nodes = false

horizontal_pod_autoscaling = true

http_load_balancing = true

initial_node_count = 0

ip_masq_link_local = false

ip_masq_resync_interval = "60s"

ip_range_pods = ""

ip_range_services = ""

issue_client_certificate = false

kubernetes_dashboard = false

kubernetes_version = "latest"

logging_service = "logging.googleapis.com"

maintenance_start_time = "05:00"

master_authorized_networks_config = []

master_ipv4_cidr_block = "10.0.0.0/28"

monitoring_service = "monitoring.googleapis.com"

name = ""

network = ""

network_policy = false

network_policy_provider = "CALICO"

network_project_id = ""

node_pools = [{ "name" : "default-node-pool" }]

node_pools_labels = { "all" : {}, "default-node-pool" : {} }

node_pools_metadata = { "all" : {}, "default-node-pool" : {} }

node_pools_oauth_scopes = { "all" : ["https://www.googleapis.com/auth/cloud-platform"], "default-node-pool" : [] }

node_pools_tags = { "all" : [], "default-node-pool" : [] }

node_pools_taints = { "all" : [], "default-node-pool" : [] }

node_version = ""

non_masquerade_cidrs = ["10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/16"]

project_id = ""

region = ""

regional = true

remove_default_node_pool = false

service_account = "create"

stub_domains = {}

subnetwork = ""

upstream_nameservers = []

zones = []
