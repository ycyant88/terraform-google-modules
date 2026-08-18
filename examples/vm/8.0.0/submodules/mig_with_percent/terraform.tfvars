autoscaler_name = ""

autoscaling_cpu = []

autoscaling_enabled = "false"

autoscaling_lb = []

autoscaling_metric = []

autoscaling_mode = null

autoscaling_scale_in_control = { "fixed_replicas" : null, "percent_replicas" : null, "time_window_sec" : null }

cooldown_period = 60

distribution_policy_zones = []

health_check = { "check_interval_sec" : 30, "enable_logging" : false, "healthy_threshold" : 1, "host" : "", "initial_delay_sec" : 30, "port" : 80, "proxy_header" : "NONE", "request" : "", "request_path" : "/", "response" : "", "timeout_sec" : 10, "type" : "", "unhealthy_threshold" : 5 }

health_check_name = ""

hostname = "default"

instance_template_initial_version = ""

instance_template_next_version = ""

max_replicas = 10

mig_name = ""

mig_timeouts = { "create" : "5m", "delete" : "15m", "update" : "5m" }

min_replicas = 2

named_ports = []

next_version_percent = ""

project_id = null

region = ""

scaling_schedules = []

stateful_disks = []

target_pools = []

target_size = 1

update_policy = []

wait_for_instances = "false"
