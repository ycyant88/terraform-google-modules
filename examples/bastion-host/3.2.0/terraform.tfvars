access_config = [{ "nat_ip" : "", "network_tier" : "PREMIUM", "public_ptr_domain_name" : "" }]

additional_ports = []

create_firewall_rule = true

create_instance_from_template = true

disk_size_gb = 100

disk_type = "pd-standard"

ephemeral_ip = false

fw_name_allow_ssh_from_iap = "allow-ssh-from-iap-to-tunnel"

host_project = ""

image = ""

image_family = "centos-7"

image_project = "gce-uefi-images"

labels = {}

machine_type = "n1-standard-1"

members = []

metadata = {}

name = "bastion-vm"

name_prefix = "bastion-instance-template"

network = ""

preemptible = false

project = ""

random_role_id = true

scopes = ["cloud-platform"]

service_account_email = ""

service_account_name = "bastion"

service_account_roles = ["roles/logging.logWriter", "roles/monitoring.metricWriter", "roles/monitoring.viewer", "roles/compute.osLogin"]

service_account_roles_supplemental = []

shielded_vm = true

startup_script = ""

subnet = ""

tags = []

zone = "us-central1-a"
