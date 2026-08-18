authenticator_security_group = ""

basic_auth_password = ""

basic_auth_username = ""

cloudrun = false

cluster_ipv4_cidr = ""

cluster_resource_labels = {}

configure_ip_masq = false

create_service_account = true

database_encryption = [{ "key_name" : "", "state" : "DECRYPTED" }]

default_max_pods_per_node = 110

deploy_using_private_endpoint = false

description = ""

disable_legacy_metadata_endpoints = true

enable_binary_authorization = false

enable_intranode_visibility = false

enable_private_endpoint = false

enable_private_nodes = false

enable_vertical_pod_autoscaling = false

grant_registry_access = false

horizontal_pod_autoscaling = true

http_load_balancing = true

identity_namespace = ""

initial_node_count = 0

ip_masq_link_local = false

ip_masq_resync_interval = "60s"

ip_range_pods = ""

ip_range_services = ""

issue_client_certificate = false

istio = false

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

node_metadata = "SECURE"

node_pools = [{ "name" : "default-node-pool" }]

node_pools_labels = { "all" : {}, "default-node-pool" : {} }

node_pools_metadata = { "all" : {}, "default-node-pool" : {} }

node_pools_oauth_scopes = { "all" : ["https://www.googleapis.com/auth/cloud-platform"], "default-node-pool" : [] }

node_pools_tags = { "all" : [], "default-node-pool" : [] }

node_pools_taints = { "all" : [], "default-node-pool" : [] }

node_version = ""

non_masquerade_cidrs = ["10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/16"]

pod_security_policy_config = [{ "enabled" : false }]

project_id = ""

region = ""

regional = true

registry_project_id = ""

remove_default_node_pool = false

resource_usage_export_dataset_id = ""

sandbox_enabled = false

service_account = ""

skip_provisioners = false

stub_domains = {}

subnetwork = ""

upstream_nameservers = []

zones = []
