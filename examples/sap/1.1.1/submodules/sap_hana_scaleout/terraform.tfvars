can_ip_forward = true

instance_name = ""

linux_image = ""

linux_image_project = ""

machine_type = ""

network_tags = []

post_deployment_script = ""

primary_startup_url = "curl -s BUILD.TERRA_SH_URL/sap_hana_scaleout/startup.sh | bash -s BUILD.TERRA_SH_URL"

project_id = ""

public_ip = true

reservation_name = ""

sap_deployment_debug = false

sap_hana_backup_nfs = ""

sap_hana_deployment_bucket = ""

sap_hana_instance_number = 0

sap_hana_shared_nfs = ""

sap_hana_sid = ""

sap_hana_sidadm_password = ""

sap_hana_sidadm_password_secret = ""

sap_hana_sidadm_uid = 900

sap_hana_standby_nodes = 1

sap_hana_system_password = ""

sap_hana_system_password_secret = ""

sap_hana_worker_nodes = 1

secondary_startup_url = "curl -s BUILD.TERRA_SH_URL/sap_hana_scaleout/startup_secondary.sh | bash -s BUILD.TERRA_SH_URL"

service_account = ""

subnetwork = ""

zone = ""
