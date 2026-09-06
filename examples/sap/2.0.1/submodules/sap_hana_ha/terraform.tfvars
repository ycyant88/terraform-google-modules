backup_disk_iops_override = null

backup_disk_throughput_override = null

backup_disk_type = ""

can_ip_forward = true

custom_mm_metadata = {}

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

is_work_load_management_deployment = false

linux_image = ""

linux_image_project = ""

loadbalancer_name = ""

log_disk_iops_override = null

log_disk_size_override = null

log_disk_throughput_override = null

log_disk_type_override = ""

log_stripe_size = "64k"

machine_type = ""

majority_maker_instance_name = ""

majority_maker_machine_type = ""

majority_maker_startup_url = "curl -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform/sap_hana_ha/hana_ha_startup_majority_maker.sh | bash -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform"

majority_maker_zone = ""

network = ""

network_tags = []

nic_type = ""

number_data_disks = 2

number_log_disks = 2

post_deployment_script = ""

primary_instance_group_name = ""

primary_instance_name = ""

primary_reservation_name = ""

primary_startup_url = "curl -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform/sap_hana_ha/hana_ha_startup.sh | bash -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform"

primary_static_ip = ""

primary_worker_static_ips = []

primary_zone = ""

project_id = ""

public_ip = true

sap_deployment_debug = false

sap_hana_backup_size = 0

sap_hana_deployment_bucket = ""

sap_hana_instance_number = 0

sap_hana_sapsys_gid = 79

sap_hana_scaleout_nodes = 0

sap_hana_sid = ""

sap_hana_sidadm_password = ""

sap_hana_sidadm_password_secret = ""

sap_hana_sidadm_uid = 900

sap_hana_system_password = ""

sap_hana_system_password_secret = ""

sap_vip = ""

secondary_instance_group_name = ""

secondary_instance_name = ""

secondary_reservation_name = ""

secondary_startup_url = "curl -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform/sap_hana_ha/hana_ha_startup_secondary.sh | bash -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform"

secondary_static_ip = ""

secondary_worker_static_ips = []

secondary_zone = ""

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

use_single_shared_data_log_disk = false

usrsap_disk_iops_override = null

usrsap_disk_size_override = null

usrsap_disk_throughput_override = null

usrsap_disk_type_override = ""

wlm_deployment_name = ""

worker_startup_url = "curl -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform/sap_hana_ha/hana_ha_startup_worker.sh | bash -s https://storage.googleapis.com/cloudsapdeploy/terraform/latest/terraform"
