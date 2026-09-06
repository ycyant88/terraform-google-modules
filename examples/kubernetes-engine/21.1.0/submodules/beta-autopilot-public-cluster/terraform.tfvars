add_cluster_firewall_rules = false

add_master_webhook_firewall_rules = false

add_shadow_firewall_rules = false

authenticator_security_group = ""

cluster_ipv4_cidr = ""

cluster_resource_labels = {}

cluster_telemetry_type = ""

configure_ip_masq = false

create_service_account = true

database_encryption = [{ "key_name" : "", "state" : "DECRYPTED" }]

datapath_provider = "DATAPATH_PROVIDER_UNSPECIFIED"

description = ""

disable_default_snat = false

dns_cache = true

enable_confidential_nodes = false

enable_network_egress_export = false

enable_resource_consumption_export = true

enable_tpu = false

enable_vertical_pod_autoscaling = false

firewall_inbound_ports = ["8443", "9443", "15017"]

firewall_priority = 1000

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

logging_service = "logging.googleapis.com/kubernetes"

maintenance_end_time = ""

maintenance_exclusions = []

maintenance_recurrence = ""

maintenance_start_time = "05:00"

master_authorized_networks = []

monitoring_service = "monitoring.googleapis.com/kubernetes"

name = ""

network = ""

network_project_id = ""

non_masquerade_cidrs = ["10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/16"]

notification_config_topic = ""

project_id = ""

region = ""

regional = true

registry_project_ids = []

release_channel = ""

resource_usage_export_dataset_id = ""

service_account = ""

shadow_firewall_rules_priority = 999

skip_provisioners = false

stub_domains = {}

subnetwork = ""

upstream_nameservers = []

zones = []
