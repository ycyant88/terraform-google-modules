create_instance_from_template = true

fw_name_allow_ssh_from_iap = "allow-ssh-from-iap-to-tunnel"

host_project = ""

image_family = "centos-7"

image_project = "gce-uefi-images"

labels = {}

machine_type = "n1-standard-1"

members = []

name = "bastion-vm"

name_prefix = "bastion-instance-template"

network = ""

project = ""

random_role_id = true

region = "us-central1"

scopes = ["cloud-platform"]

service_account_name = "bastion"

service_account_roles = ["roles/logging.logWriter", "roles/monitoring.metricWriter", "roles/monitoring.viewer", "roles/compute.osLogin"]

service_account_roles_supplemental = []

shielded_vm = true

startup_script = ""

subnet = ""

tags = []

zone = "us-central1-a"
