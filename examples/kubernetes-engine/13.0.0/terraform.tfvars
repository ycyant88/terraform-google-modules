add_cluster_firewall_rules = false

basic_auth_password = ""

basic_auth_username = ""

cluster_autoscaling = { "enabled" : false, "max_cpu_cores" : 0, "max_memory_gb" : 0, "min_cpu_cores" : 0, "min_memory_gb" : 0 }

cluster_ipv4_cidr = ""

cluster_resource_labels = {}

configure_ip_masq = false

create_service_account = true

database_encryption = [{ "key_name" : "", "state" : "DECRYPTED" }]

default_max_pods_per_node = 110

description = ""

disable_legacy_metadata_endpoints = true

enable_binary_authorization = false

enable_network_egress_export = false

enable_resource_consumption_export = true

enable_shielded_nodes = true

enable_vertical_pod_autoscaling = false

firewall_inbound_ports = ["8443", "9443", "15017"]

firewall_priority = 1000

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

kubernetes_version = "latest"

logging_service = "logging.googleapis.com/kubernetes"

maintenance_exclusions = []

maintenance_start_time = "05:00"

master_authorized_networks = []

monitoring_service = "monitoring.googleapis.com/kubernetes"

name = ""

network = ""

network_policy = true

network_policy_provider = "CALICO"

network_project_id = ""

node_metadata = "GKE_METADATA_SERVER"

node_pools = [{ "name" : "default-node-pool" }]

node_pools_labels = { "all" : {}, "default-node-pool" : {} }

node_pools_metadata = { "all" : {}, "default-node-pool" : {} }

node_pools_oauth_scopes = { "all" : ["https://www.googleapis.com/auth/cloud-platform"], "default-node-pool" : [] }

node_pools_tags = { "all" : [], "default-node-pool" : [] }

node_pools_taints = { "all" : [], "default-node-pool" : [] }

non_masquerade_cidrs = ["10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/16"]

project_id = ""

region = ""

regional = true

registry_project_id = ""

release_channel = ""

remove_default_node_pool = false

resource_usage_export_dataset_id = ""

service_account = ""

skip_provisioners = false

stub_domains = {}

subnetwork = ""

upstream_nameservers = []

zones = []
