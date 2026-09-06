boot_disk_size = 40

client_cidrs = []

container_image = "mysql:5.7"

create_firewall_rule = false

data_disk_size = ""

data_disk_type = "pd-ssd"

host_project_id = ""

instance_count = 1

instance_type = "n1-standard-2"

kms_data = {}

labels = { "service" : "mysql" }

log_driver = "gcplogs"

my_cnf = ""

mysql_port = 3306

network = ""

network_tag = "mysql"

password = ""

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
