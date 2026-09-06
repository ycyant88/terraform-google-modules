basic_auth_password = ""

basic_auth_username = ""

description = ""

disable_legacy_metadata_endpoints = "true"

horizontal_pod_autoscaling = true

http_load_balancing = true

ip_masq_link_local = "false"

ip_masq_resync_interval = "60s"

ip_range_pods = ""

ip_range_services = ""

issue_client_certificate = "false"

kubernetes_dashboard = false

kubernetes_version = "latest"

logging_service = "logging.googleapis.com"

maintenance_start_time = "05:00"

master_authorized_networks_config = []

monitoring_service = "monitoring.googleapis.com"

name = ""

network = ""

network_policy = false

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

zones = [""]
