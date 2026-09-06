image = "gce-uefi-images/centos-7"

labels = {}

machine_type = "n1-standard-1"

members = []

name = "bastion-vm"

network = ""

project = ""

region = "us-central1"

scopes = ["cloud-platform"]

service_account_roles = ["roles/logging.logWriter", "roles/monitoring.metricWriter", "roles/monitoring.viewer", "roles/compute.osLogin"]

service_account_roles_supplemental = []

shielded_vm = true

startup_script = ""

subnet = ""

zone = "us-central1-a"
