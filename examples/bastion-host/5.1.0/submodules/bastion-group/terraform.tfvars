additional_networks = []

fw_name_allow_ssh_from_health_check_cidrs = "allow-ssh-from-health-check-cidrs"

fw_name_allow_ssh_from_iap = "allow-ssh-from-iap-to-bastion-group"

health_check = { "check_interval_sec" : 30, "healthy_threshold" : 1, "host" : "", "initial_delay_sec" : 30, "port" : 22, "proxy_header" : "NONE", "request" : "", "request_path" : "", "response" : "", "timeout_sec" : 10, "type" : "tcp", "unhealthy_threshold" : 5 }

host_project = ""

image_family = "debian-11"

image_project = "debian-cloud"

labels = {}

machine_type = "n1-standard-1"

members = []

metadata = {}

name = "bastion"

network = ""

project = ""

random_role_id = true

region = "us-central1"

scopes = ["cloud-platform"]

service_account_email = ""

service_account_name = "bastion-group"

service_account_roles = ["roles/logging.logWriter", "roles/monitoring.metricWriter", "roles/monitoring.viewer", "roles/compute.osLogin"]

service_account_roles_supplemental = []

shielded_vm = true

startup_script = ""

subnet = ""

tags = []

target_size = 1

zone = "us-central1-a"
