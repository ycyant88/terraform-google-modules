can_ip_forward = true

custom_primary_metadata = {}

custom_secondary_metadata = {}

custom_standby_metadata = {}

data_disk_iops_override = null

data_disk_size_override = null

data_disk_throughput_override = null

data_disk_type_override = ""

disk_type = ""

hyperdisk_balanced_iops_default = 3000

hyperdisk_balanced_throughput_default = 750

instance_name = ""

linux_image = ""

linux_image_project = ""

log_disk_iops_override = null

log_disk_size_override = null

log_disk_throughput_override = null

log_disk_type_override = ""

machine_type = ""

network_tags = []

nic_type = ""

post_deployment_script = ""

primary_startup_url = "curl -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform/sap_hana_scaleout/hana_scaleout_startup.sh | bash -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform"

project_id = ""

public_ip = true

reservation_name = ""

sap_deployment_debug = false

sap_hana_backup_nfs = ""

sap_hana_deployment_bucket = ""

sap_hana_instance_number = 0

sap_hana_sapsys_gid = 79

sap_hana_shared_nfs = ""

sap_hana_sid = ""

sap_hana_sidadm_password = ""

sap_hana_sidadm_password_secret = ""

sap_hana_sidadm_uid = 900

sap_hana_standby_nodes = 1

sap_hana_system_password = ""

sap_hana_system_password_secret = ""

sap_hana_worker_nodes = 1

secondary_startup_url = "curl -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform/sap_hana_scaleout/hana_scaleout_startup_secondary.sh | bash -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform"

service_account = ""

standby_static_ips = []

subnetwork = ""

unified_disk_iops_override = null

unified_disk_size_override = null

unified_disk_throughput_override = null

use_single_data_log_disk = false

vm_static_ip = ""

worker_static_ips = []

zone = ""
