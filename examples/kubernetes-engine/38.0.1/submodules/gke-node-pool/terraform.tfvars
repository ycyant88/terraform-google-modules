autoscaling = { "max_node_count" : 100, "min_node_count" : 1 }

cluster = ""

initial_node_count = null

kubernetes_version = null

location = null

management = { "auto_repair" : true, "auto_upgrade" : true }

max_pods_per_node = null

name = null

name_prefix = null

network_config = null

node_config = { "disk_size_gb" : 100, "disk_type" : "pd-standard", "image_type" : "COS_CONTAINERD", "kubelet_config" : { "insecure_kubelet_readonly_port_enabled" : false }, "machine_type" : "e2-medium", "workload_metadata_config" : { "mode" : "GKE_METADATA" } }

node_count = 1

node_locations = null

placement_policy = null

project = ""

queued_provisioning = null

timeouts = { "create" : "45m", "delete" : "45m", "update" : "45m" }

upgrade_settings = { "max_surge" : 1, "max_unavailable" : 0, "strategy" : "SURGE" }
