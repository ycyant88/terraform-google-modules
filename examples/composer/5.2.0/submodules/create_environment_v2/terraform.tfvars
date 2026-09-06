airflow_config_overrides = {}

cloud_composer_connection_subnetwork = null

cloud_composer_network_ipv4_cidr_block = null

cloud_data_lineage_integration = false

cloud_sql_ipv4_cidr = null

composer_env_name = ""

composer_service_account = null

enable_ip_masq_agent = false

enable_private_endpoint = false

enable_privately_used_public_ips = false

env_variables = {}

environment_size = "ENVIRONMENT_SIZE_MEDIUM"

grant_sa_agent_permission = true

image_version = "composer-2.5.0-airflow-2.6.3"

kms_key_name = null

labels = {}

maintenance_end_time = null

maintenance_recurrence = null

maintenance_start_time = "05:00"

master_authorized_networks = []

master_ipv4_cidr = null

network = ""

network_project_id = ""

pod_ip_allocation_range_name = null

project_id = ""

pypi_packages = {}

region = "us-central1"

resilience_mode = null

scheduled_snapshots_config = null

scheduler = { "count" : 2, "cpu" : 2, "memory_gb" : 7.5, "storage_gb" : 5 }

service_ip_allocation_range_name = null

storage_bucket = null

subnetwork = ""

subnetwork_region = ""

tags = []

task_logs_retention_storage_mode = null

triggerer = null

use_private_environment = false

web_server = { "cpu" : 2, "memory_gb" : 7.5, "storage_gb" : 5 }

web_server_network_access_control = null

worker = { "cpu" : 2, "max_count" : 6, "memory_gb" : 7.5, "min_count" : 2, "storage_gb" : 5 }
