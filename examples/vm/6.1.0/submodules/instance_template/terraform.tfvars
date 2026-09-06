access_config = []

additional_disks = []

auto_delete = "true"

can_ip_forward = "false"

disk_size_gb = "100"

disk_type = "pd-standard"

enable_shielded_vm = false

labels = {}

machine_type = "n1-standard-1"

metadata = {}

name_prefix = "default-instance-template"

network = ""

network_ip = ""

preemptible = false

project_id = ""

region = ""

service_account = ""

shielded_instance_config = { "enable_integrity_monitoring" : true, "enable_secure_boot" : true, "enable_vtpm" : true }

source_image = ""

source_image_family = "centos-7"

source_image_project = "gce-uefi-images"

startup_script = ""

subnetwork = ""

subnetwork_project = ""

tags = []
