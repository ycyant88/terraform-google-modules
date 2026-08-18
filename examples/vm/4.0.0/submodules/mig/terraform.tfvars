autoscaling_cpu = []

autoscaling_enabled = "false"

autoscaling_lb = []

autoscaling_metric = []

cooldown_period = 60

distribution_policy_zones = []

health_check = { "check_interval_sec" : 30, "healthy_threshold" : 1, "host" : "", "initial_delay_sec" : 30, "port" : 80, "proxy_header" : "NONE", "request" : "", "request_path" : "/", "response" : "", "timeout_sec" : 10, "type" : "", "unhealthy_threshold" : 5 }

hostname = "default"

instance_template = ""

max_replicas = 10

mig_timeouts = { "create" : "5m", "delete" : "15m", "update" : "5m" }

min_replicas = 2

named_ports = []

network = ""

project_id = ""

region = ""

stateful_disks = []

subnetwork = ""

subnetwork_project = ""

target_pools = []

target_size = 1

update_policy = []

wait_for_instances = "false"
