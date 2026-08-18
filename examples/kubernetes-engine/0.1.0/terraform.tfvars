description = ""

horizontal_pod_autoscaling = false

http_load_balancing = true

ip_masq_link_local = "false"

ip_masq_resync_interval = "60s"

ip_range_pods = ""

ip_range_services = ""

kubernetes_dashboard = false

kubernetes_version = "1.10.6-gke.2"

maintenance_start_time = "05:00"

name = ""

network = ""

network_policy = false

network_project_id = ""

node_pools = [{ "name" : "default-node-pool" }]

node_pools_labels = { "all" : {}, "default-node-pool" : {} }

node_pools_tags = { "all" : [], "default-node-pool" : [] }

node_pools_taints = { "all" : [], "default-node-pool" : [] }

node_version = ""

non_masquerade_cidrs = ["10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/16"]

project_id = ""

region = ""

regional = true

stub_domains = {}

subnetwork = ""

zones = []
