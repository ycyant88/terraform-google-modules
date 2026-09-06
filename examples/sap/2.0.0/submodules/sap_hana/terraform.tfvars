backup_disk_iops_override = null

backup_disk_throughput_override = null

backup_disk_type = ""

can_ip_forward = true

custom_primary_metadata = {}

custom_secondary_metadata = {}

data_disk_iops_override = null

data_disk_size_override = null

data_disk_throughput_override = null

data_disk_type_override = ""

data_stripe_size = "256k"

disk_type = ""

enable_data_striping = false

enable_fast_restart = true

enable_log_striping = false

hyperdisk_balanced_iops_default = 3000

hyperdisk_balanced_throughput_default = 750

include_backup_disk = true

instance_name = ""

linux_image = ""

linux_image_project = ""

log_disk_iops_override = null

log_disk_size_override = null

log_disk_throughput_override = null

log_disk_type_override = ""

log_stripe_size = "64k"

machine_type = ""

network_tags = []

nic_type = ""

number_data_disks = 2

number_log_disks = 2

post_deployment_script = ""

primary_startup_url = "curl -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform/sap_hana/hana_startup.sh | bash -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform"

project_id = ""

public_ip = true

reservation_name = ""

sap_deployment_debug = false

sap_hana_backup_nfs = ""

sap_hana_backup_nfs_resource = null

sap_hana_backup_size = 0

sap_hana_deployment_bucket = ""

sap_hana_instance_number = 0

sap_hana_sapsys_gid = 79

sap_hana_scaleout_nodes = 0

sap_hana_shared_nfs = ""

sap_hana_shared_nfs_resource = null

sap_hana_sid = ""

sap_hana_sidadm_password = ""

sap_hana_sidadm_password_secret = ""

sap_hana_sidadm_uid = 900

sap_hana_system_password = ""

sap_hana_system_password_secret = ""

secondary_startup_url = "curl -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform/sap_hana/hana_startup_secondary.sh | bash -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform"

service_account = ""

shared_disk_iops_override = null

shared_disk_size_override = null

shared_disk_throughput_override = null

shared_disk_type_override = ""

sole_tenant_deployment = false

sole_tenant_name_prefix = ""

sole_tenant_node_type = null

subnetwork = ""

unified_disk_iops_override = null

unified_disk_size_override = null

unified_disk_throughput_override = null

unified_worker_disk_iops_override = null

unified_worker_disk_size_override = null

unified_worker_disk_throughput_override = null

use_single_shared_data_log_disk = false

usrsap_disk_iops_override = null

usrsap_disk_size_override = null

usrsap_disk_throughput_override = null

usrsap_disk_type_override = ""

vm_static_ip = ""

worker_static_ips = []

zone = ""
