airflow_config_overrides = {}

cloud_data_lineage_integration = false

composer_env_name = ""

composer_network_attachment_name = null

composer_service_account = null

create_network_attachment = true

dag_processor = { "count" : 2, "cpu" : 2, "memory_gb" : 7.5, "storage_gb" : 5 }

enable_private_builds_only = false

env_variables = {}

environment_size = "ENVIRONMENT_SIZE_MEDIUM"

grant_sa_agent_permission = true

image_version = "composer-3-airflow-2.10.2-build.7"

kms_key_name = null

labels = {}

maintenance_end_time = null

maintenance_recurrence = null

maintenance_start_time = "05:00"

network = ""

network_project_id = ""

project_id = ""

pypi_packages = {}

region = "us-central1"

resilience_mode = null

scheduled_snapshots_config = null

scheduler = { "count" : 2, "cpu" : 1, "memory_gb" : 4, "storage_gb" : 5 }

storage_bucket = null

subnetwork = ""

subnetwork_region = ""

tags = []

task_logs_retention_storage_mode = null

triggerer = null

use_private_environment = false

web_server = { "cpu" : 2, "memory_gb" : 7.5, "storage_gb" : 5 }

web_server_network_access_control = null

web_server_plugins_mode = "ENABLED"

worker = { "cpu" : 2, "max_count" : 6, "memory_gb" : 7.5, "min_count" : 2, "storage_gb" : 5 }
