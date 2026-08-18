kms_crypto_key = "vault-init"

kms_keyring = "vault"

kms_protection_level = "software"

manage_tls = true

network_subnet_cidr_range = "10.127.0.0/20"

project_id = ""

project_services = ["cloudkms.googleapis.com", "cloudresourcemanager.googleapis.com", "compute.googleapis.com", "iam.googleapis.com", "logging.googleapis.com", "monitoring.googleapis.com"]

region = "us-east4"

service_account_name = "vault-admin"

service_account_project_additional_iam_roles = []

service_account_project_iam_roles = ["roles/logging.logWriter", "roles/monitoring.metricWriter", "roles/monitoring.viewer"]

service_account_storage_bucket_iam_roles = ["roles/storage.legacyBucketReader", "roles/storage.objectAdmin"]

ssh_allowed_cidrs = ["0.0.0.0/0"]

storage_bucket_class = "MULTI_REGIONAL"

storage_bucket_enable_versioning = false

storage_bucket_force_destroy = false

storage_bucket_lifecycle_rules = []

storage_bucket_location = "us"

storage_bucket_name = ""

tls_ca_subject = { "common_name" : "Example Inc. Root", "country" : "US", "locality" : "The Intranet", "organization" : "Example, Inc", "organizational_unit" : "Department of Certificate Authority", "postal_code" : "95559-1227", "province" : "CA", "street_address" : ["123 Example Street"] }

tls_cn = "vault.example.net"

tls_dns_names = ["vault.example.net"]

tls_ips = ["127.0.0.1"]

tls_ou = "IT Security Operations"

tls_save_ca_to_disk = true

vault_allowed_cidrs = ["0.0.0.0/0"]

vault_args = ""

vault_ca_cert_filename = "ca.crt"

vault_instance_base_image = "debian-cloud/debian-9"

vault_instance_labels = {}

vault_instance_metadata = {}

vault_instance_tags = []

vault_log_level = "warn"

vault_machine_type = "n1-standard-1"

vault_max_num_servers = "7"

vault_min_num_servers = "1"

vault_port = "8200"

vault_proxy_port = "58200"

vault_tls_bucket = ""

vault_tls_cert_filename = "vault.crt"

vault_tls_disable_client_certs = false

vault_tls_key_filename = "vault.key.enc"

vault_tls_require_and_verify_client_cert = false

vault_ui_enabled = true

vault_version = "1.1.3"
