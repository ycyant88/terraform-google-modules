admin_disable_polling = false

admin_max_calls = "14"

admin_period = "1.0"

appengine_disable_polling = false

appengine_max_calls = "18"

appengine_period = "1.0"

audit_logging_enabled = "false"

audit_logging_violations_should_notify = "true"

bigquery_acl_violations_should_notify = "true"

bigquery_disable_polling = false

bigquery_enabled = "true"

bigquery_max_calls = "160"

bigquery_period = "1.0"

blacklist_enabled = "true"

blacklist_violations_should_notify = "true"

bucket_acl_enabled = "true"

bucket_cai_lifecycle_age = "14"

bucket_cai_location = "us-central1"

buckets_acl_violations_should_notify = "true"

cai_api_timeout = "3600"

client_access_config = {}

client_boot_image = "ubuntu-os-cloud/ubuntu-1804-lts"

client_instance_metadata = {}

client_private = "false"

client_region = "us-central1"

client_ssh_allow_ranges = ["0.0.0.0/0"]

client_tags = []

client_type = "n1-standard-2"

cloudasset_disable_polling = false

cloudasset_max_calls = "1"

cloudasset_period = "1.0"

cloudbilling_disable_polling = false

cloudbilling_max_calls = "5"

cloudbilling_period = "1.2"

cloudsql_acl_enabled = "true"

cloudsql_acl_violations_should_notify = "true"

cloudsql_db_name = "forseti_security"

cloudsql_db_port = "3306"

cloudsql_proxy_arch = "linux.amd64"

cloudsql_region = "us-central1"

cloudsql_type = "db-n1-standard-1"

cloudsql_user_host = "%"

composite_root_resources = []

compute_disable_polling = false

compute_max_calls = "18"

compute_period = "1.0"

config_validator_enabled = "false"

config_validator_violations_should_notify = "true"

container_disable_polling = false

container_max_calls = "9"

container_period = "1.0"

crm_disable_polling = false

crm_max_calls = "4"

crm_period = "1.2"

cscc_source_id = ""

cscc_violations_enabled = "false"

domain = ""

enable_cai_bucket = "true"

enable_write = "false"

enabled_apis_enabled = "false"

enabled_apis_violations_should_notify = "true"

excluded_resources = []

external_project_access_violations_should_notify = "true"

firewall_rule_enabled = "true"

firewall_rule_violations_should_notify = "true"

folder_id = ""

forseti_email_recipient = ""

forseti_email_sender = ""

forseti_home = "$USER_HOME/forseti-security"

forseti_repo_url = "https://github.com/GoogleCloudPlatform/forseti-security"

forseti_run_frequency = "0 */2 * * *"

forseti_version = "v2.20.0"

forwarding_rule_enabled = "false"

forwarding_rule_violations_should_notify = "true"

group_enabled = "true"

groups_settings_disable_polling = false

groups_settings_enabled = "true"

groups_settings_max_calls = "5"

groups_settings_period = "1.1"

groups_settings_violations_should_notify = "true"

groups_violations_should_notify = "true"

gsuite_admin_email = ""

iam_disable_polling = false

iam_max_calls = "90"

iam_period = "1.0"

iam_policy_enabled = "true"

iam_policy_violations_should_notify = "true"

iam_policy_violations_slack_webhook = ""

iap_enabled = "true"

iap_violations_should_notify = "true"

instance_network_interface_enabled = "false"

instance_network_interface_violations_should_notify = "true"

inventory_email_summary_enabled = "false"

inventory_gcs_summary_enabled = "true"

inventory_retention_days = "-1"

ke_scanner_enabled = "false"

ke_version_scanner_enabled = "true"

ke_version_violations_should_notify = "true"

ke_violations_should_notify = "true"

kms_scanner_enabled = "true"

kms_violations_should_notify = "true"

kms_violations_slack_webhook = ""

lien_enabled = "true"

lien_violations_should_notify = "true"

location_enabled = "true"

location_violations_should_notify = "true"

log_sink_enabled = "true"

log_sink_violations_should_notify = "true"

logging_disable_polling = false

logging_max_calls = "9"

logging_period = "1.0"

network = "default"

network_project = ""

org_id = ""

policy_library_home = "$USER_HOME/policy-library"

policy_library_repository_url = ""

policy_library_sync_enabled = "false"

policy_library_sync_gcs_directory_name = "policy_library_sync"

policy_library_sync_git_sync_tag = "v3.1.2"

policy_library_sync_ssh_known_hosts = ""

project_id = ""

resource_enabled = "true"

resource_violations_should_notify = "true"

securitycenter_disable_polling = false

securitycenter_max_calls = "1"

securitycenter_period = "1.1"

sendgrid_api_key = ""

server_access_config = {}

server_boot_disk_size = "100"

server_boot_disk_type = "pd-ssd"

server_boot_image = "ubuntu-os-cloud/ubuntu-1804-lts"

server_grpc_allow_ranges = ["10.128.0.0/9"]

server_instance_metadata = {}

server_private = "false"

server_region = "us-central1"

server_ssh_allow_ranges = ["0.0.0.0/0"]

server_tags = []

server_type = "n1-standard-2"

service_account_key_enabled = "true"

service_account_key_violations_should_notify = "true"

servicemanagement_disable_polling = false

servicemanagement_max_calls = "2"

servicemanagement_period = "1.1"

sqladmin_disable_polling = false

sqladmin_max_calls = "1"

sqladmin_period = "1.1"

storage_bucket_location = "us-central1"

storage_disable_polling = false

subnetwork = "default"

violations_slack_webhook = ""
