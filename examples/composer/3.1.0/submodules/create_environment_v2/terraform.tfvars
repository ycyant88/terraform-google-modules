airflow_config_overrides = {}

cloud_composer_network_ipv4_cidr_block = ""

cloud_sql_ipv4_cidr = ""

composer_env_name = ""

composer_service_account = ""

enable_private_endpoint = false

env_variables = {}

environment_size = "ENVIRONMENT_SIZE_MEDIUM"

grant_sa_agent_permission = true

image_version = "composer-2.0.2-airflow-2.1.4"

labels = {}

maintenance_end_time = ""

maintenance_recurrence = ""

maintenance_start_time = "05:00"

master_authorized_networks = []

master_ipv4_cidr = ""

network = ""

network_project_id = ""

pod_ip_allocation_range_name = ""

project_id = ""

pypi_packages = {}

region = "us-central1"

scheduler = { "count" : 2, "cpu" : 2, "memory_gb" : 7.5, "storage_gb" : 5 }

service_ip_allocation_range_name = ""

subnetwork = ""

subnetwork_region = ""

use_private_environment = false

web_server = { "cpu" : 2, "memory_gb" : 7.5, "storage_gb" : 5 }

web_server_allowed_ip_ranges = ""

web_server_ipv4_cidr = ""

worker = { "cpu" : 2, "max_count" : 6, "memory_gb" : 7.5, "min_count" : 2, "storage_gb" : 5 }
