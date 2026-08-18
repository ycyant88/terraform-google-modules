authenticator_security_group = ""

cloudrun = false

cluster_ipv4_cidr = ""

cluster_resource_labels = {}

compute_engine_service_account = ""

database_encryption = [{ "key_name" : "", "state" : "DECRYPTED" }]

default_max_pods_per_node = 110

description = ""

enable_intranode_visibility = false

enable_shielded_nodes = true

enable_vertical_pod_autoscaling = false

grant_registry_access = false

horizontal_pod_autoscaling = true

http_load_balancing = true

initial_node_count = 0

ip_range_pods = ""

ip_range_services = ""

istio = false

kubernetes_version = "latest"

maintenance_start_time = "05:00"

master_authorized_networks = []

master_ipv4_cidr_block = "10.0.0.0/28"

name = ""

network = ""

network_project_id = ""

node_pools = [{ "name" : "default-node-pool" }]

node_pools_labels = { "all" : {}, "default-node-pool" : {} }

node_pools_metadata = { "all" : {}, "default-node-pool" : {} }

node_pools_oauth_scopes = { "all" : ["https://www.googleapis.com/auth/cloud-platform"], "default-node-pool" : [] }

node_pools_tags = { "all" : [], "default-node-pool" : [] }

node_pools_taints = { "all" : [], "default-node-pool" : [] }

node_version = ""

project_id = ""

region = ""

regional = true

registry_project_id = ""

resource_usage_export_dataset_id = ""

sandbox_enabled = false

service_account = ""

stub_domains = {}

subnetwork = ""

upstream_nameservers = []

zones = []
