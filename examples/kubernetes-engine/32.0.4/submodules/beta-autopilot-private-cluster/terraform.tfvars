add_cluster_firewall_rules = false

add_master_webhook_firewall_rules = false

add_shadow_firewall_rules = false

additional_ip_range_pods = []

allow_net_admin = null

authenticator_security_group = null

cluster_ipv4_cidr = null

cluster_resource_labels = {}

configure_ip_masq = false

create_service_account = true

database_encryption = [{ "key_name" : "", "state" : "DECRYPTED" }]

deletion_protection = true

deploy_using_private_endpoint = false

description = ""

disable_default_snat = false

dns_cache = true

enable_binary_authorization = false

enable_cilium_clusterwide_network_policy = false

enable_confidential_nodes = false

enable_cost_allocation = false

enable_fqdn_network_policy = null

enable_gcfs = null

enable_l4_ilb_subsetting = false

enable_network_egress_export = false

enable_private_endpoint = false

enable_private_nodes = false

enable_resource_consumption_export = true

enable_secret_manager_addon = false

enable_tpu = false

enable_vertical_pod_autoscaling = true

firewall_inbound_ports = ["8443", "9443", "15017"]

firewall_priority = 1000

fleet_project = null

fleet_project_grant_service_agent = false

gateway_api_channel = null

gcs_fuse_csi_driver = false

gke_backup_agent_config = false

grant_registry_access = false

horizontal_pod_autoscaling = true

http_load_balancing = true

identity_namespace = "enabled"

ip_masq_link_local = false

ip_masq_resync_interval = "60s"

ip_range_pods = ""

ip_range_services = ""

issue_client_certificate = false

kubernetes_version = "latest"

logging_variant = null

maintenance_end_time = ""

maintenance_exclusions = []

maintenance_recurrence = ""

maintenance_start_time = "05:00"

master_authorized_networks = []

master_global_access_enabled = true

master_ipv4_cidr_block = null

name = ""

network = ""

network_project_id = ""

network_tags = []

non_masquerade_cidrs = ["10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/16"]

notification_config_topic = ""

notification_filter_event_type = []

private_endpoint_subnetwork = null

project_id = ""

ray_operator_config = { "enabled" : false, "logging_enabled" : false, "monitoring_enabled" : false }

region = null

regional = true

registry_project_ids = []

release_channel = "REGULAR"

resource_usage_export_dataset_id = ""

security_posture_mode = "DISABLED"

security_posture_vulnerability_mode = "VULNERABILITY_DISABLED"

service_account = ""

service_account_name = ""

service_external_ips = false

shadow_firewall_rules_log_config = { "metadata" : "INCLUDE_ALL_METADATA" }

shadow_firewall_rules_priority = 999

stack_type = "IPV4"

stateful_ha = false

stub_domains = {}

subnetwork = ""

timeouts = {}

upstream_nameservers = []

workload_config_audit_mode = "DISABLED"

workload_vulnerability_mode = ""

zones = []
