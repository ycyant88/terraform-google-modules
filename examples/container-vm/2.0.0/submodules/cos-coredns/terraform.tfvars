boot_disk_size = 10

client_cidrs = []

container_image = "coredns/coredns"

corefile = ""

create_firewall_rule = false

instance_count = 1

instance_type = "g1-small"

labels = { "service" : "coredns" }

log_driver = "gcplogs"

network = ""

network_tag = "coredns"

prefix = ""

project_id = ""

region = ""

scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/pubsub", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]

service_account = ""

stackdriver_logging = true

stackdriver_monitoring = true

subnetwork = ""

vm_tags = []

zone = ""
