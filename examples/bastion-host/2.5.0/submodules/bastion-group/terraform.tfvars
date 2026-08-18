fw_name_allow_ssh_from_iap = "allow-ssh-from-iap-to-bastion-group"

host_project = ""

image_family = "centos-7"

image_project = "gce-uefi-images"

labels = {}

machine_type = "n1-standard-1"

members = []

name = "bastion"

network = ""

project = ""

random_role_id = true

region = "us-central1"

scopes = ["cloud-platform"]

service_account_name = "bastion-group"

service_account_roles = ["roles/logging.logWriter", "roles/monitoring.metricWriter", "roles/monitoring.viewer", "roles/compute.osLogin"]

service_account_roles_supplemental = []

shielded_vm = true

startup_script = ""

subnet = ""

tags = []

target_size = 1

zone = "us-central1-a"
