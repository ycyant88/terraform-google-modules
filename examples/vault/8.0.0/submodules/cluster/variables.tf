variable "domain" {
  description = "The domain name that will be set in the api_addr. Load Balancer IP used by default"
  type        = string
  default     = ""
}

variable "hc_initial_delay_secs" {
  description = "The number of seconds that the managed instance group waits before it applies autohealing policies to new instances or recently recreated instances."
  type        = number
  default     = 60
}

variable "host_project_id" {
  description = "ID of the host project if using Shared VPC"
  type        = string
  default     = ""
}

variable "http_proxy" {
  description = "HTTP proxy for downloading agents and vault executable on startup. Only necessary if allow_public_egress is false. This is only used on the first startup of the Vault cluster and will NOT set the global HTTP_PROXY environment variable. i.e. If you configure Vault to manage credentials for other services, default HTTP routes will be taken."
  type        = string
  default     = ""
}

variable "ip_address" {
  description = "The IP address to assign the forwarding rules to."
  type        = string
  default     = ""
}

variable "kms_crypto_key" {
  description = "The name of the Cloud KMS Key used for encrypting initial TLS certificates and for configuring Vault auto-unseal. Terraform will create this key."
  type        = string
  default     = "vault-init"
}

variable "kms_keyring" {
  description = "Name of the Cloud KMS KeyRing for asset encryption. Terraform will create this keyring."
  type        = string
  default     = "vault"
}

variable "kms_protection_level" {
  description = "The protection level to use for the KMS crypto key."
  type        = string
  default     = "software"
}

variable "load_balancing_scheme" {
  description = "Options are INTERNAL or EXTERNAL. If EXTERNAL, the forwarding rule will be of type EXTERNAL and a public IP will be created. If INTERNAL the type will be INTERNAL and a random RFC 1918 private IP will be assigned"
  type        = string
  default     = "EXTERNAL"
}

variable "manage_tls" {
  description = "Set to false if you'd like to manage and upload your own TLS files. See Managing TLS for more details"
  type        = bool
  default     = true
}

variable "min_ready_sec" {
  description = "Minimum number of seconds to wait before considering a new or restarted instance as updated. This value must be from range. [0,3600]"
  type        = number
  default     = 0
}

variable "project_id" {
  description = "ID of the project in which to create resources and add IAM bindings."
  type        = string
  default     = ""
}

variable "region" {
  description = "Region in which to create resources."
  type        = string
  default     = "us-east4"
}

variable "service_account_project_additional_iam_roles" {
  description = "List of custom IAM roles to add to the project."
  type        = list(string)
  default     = []
}

variable "service_account_project_iam_roles" {
  description = "List of IAM roles for the Vault admin service account to function. If you need to add additional roles, update service_account_project_additional_iam_roles instead."
  type        = list(string)
  default     = ["roles/logging.logWriter", "roles/monitoring.metricWriter", "roles/monitoring.viewer"]
}

variable "service_account_storage_bucket_iam_roles" {
  description = "List of IAM roles for the Vault admin service account to have on the storage bucket."
  type        = list(string)
  default     = ["roles/storage.legacyBucketReader", "roles/storage.objectAdmin"]
}

variable "service_label" {
  description = "The service label to set on the internal load balancer. If not empty, this enables internal DNS for internal load balancers. By default, the service label is disabled. This has no effect on external load balancers."
  type        = string
  default     = null
}

variable "subnet" {
  description = "The self link of the VPC subnetwork for Vault. By default, one will be created for you."
  type        = string
  default     = ""
}

variable "tls_ca_subject" {
  description = "The subject block for the root CA certificate."
  type = object({
    common_name         = string,
    organization        = string,
    organizational_unit = string,
    street_address      = list(string),
    locality            = string,
    province            = string,
    country             = string,
    postal_code         = string,
  })
  default = { "common_name" : "Example Inc. Root", "country" : "US", "locality" : "The Intranet", "organization" : "Example, Inc", "organizational_unit" : "Department of Certificate Authority", "postal_code" : "95559-1227", "province" : "CA", "street_address" : ["123 Example Street"] }
}

variable "tls_cn" {
  description = "The TLS Common Name for the TLS certificates"
  type        = string
  default     = "vault.example.net"
}

variable "tls_dns_names" {
  description = "List of DNS names added to the Vault server self-signed certificate"
  type        = list(string)
  default     = ["vault.example.net"]
}

variable "tls_ips" {
  description = "List of IP addresses added to the Vault server self-signed certificate"
  type        = list(string)
  default     = ["127.0.0.1"]
}

variable "tls_ou" {
  description = "The TLS Organizational Unit for the TLS certificate"
  type        = string
  default     = "IT Security Operations"
}

variable "tls_save_ca_to_disk" {
  description = "Save the CA public certificate on the local filesystem. The CA is always stored in GCS, but this option also saves it to the filesystem."
  type        = bool
  default     = true
}

variable "tls_save_ca_to_disk_filename" {
  description = "The filename or full path to save the CA public certificate on the local filesystem. Ony applicable if tls_save_ca_to_disk is set to true."
  type        = string
  default     = "ca.crt"
}

variable "user_startup_script" {
  description = "Additional user-provided code injected after Vault is setup"
  type        = string
  default     = ""
}

variable "user_vault_config" {
  description = "Additional user-provided vault config added at the end of standard vault config"
  type        = string
  default     = ""
}

variable "vault_args" {
  description = "Additional command line arguments passed to Vault server"
  type        = string
  default     = ""
}

variable "vault_ca_cert_filename" {
  description = "GCS object path within the vault_tls_bucket. This is the root CA certificate."
  type        = string
  default     = "ca.crt"
}

variable "vault_instance_base_image" {
  description = "Base operating system image in which to install Vault. This must be a Debian-based system at the moment due to how the metadata startup script runs."
  type        = string
  default     = "debian-cloud/debian-11"
}

variable "vault_instance_labels" {
  description = "Labels to apply to the Vault instances."
  type        = map(string)
  default     = {}
}

variable "vault_instance_metadata" {
  description = "Additional metadata to add to the Vault instances."
  type        = map(string)
  default     = {}
}

variable "vault_instance_tags" {
  description = "Additional tags to apply to the instances. Note 'allow-ssh' and 'allow-vault' will be present on all instances."
  type        = list(string)
  default     = []
}

variable "vault_log_level" {
  description = "Log level to run Vault in. See the Vault documentation for valid values."
  type        = string
  default     = "warn"
}

variable "vault_machine_type" {
  description = "Machine type to use for Vault instances."
  type        = string
  default     = "e2-standard-2"
}

variable "vault_max_num_servers" {
  description = "Maximum number of Vault server nodes to run at one time. The group will not autoscale beyond this number."
  type        = string
  default     = "7"
}

variable "vault_min_num_servers" {
  description = "Minimum number of Vault server nodes in the autoscaling group. The group will not have less than this number of nodes."
  type        = string
  default     = "1"
}

variable "vault_port" {
  description = "Numeric port on which to run and expose Vault."
  type        = string
  default     = "8200"
}

variable "vault_proxy_port" {
  description = "Port to expose Vault's health status endpoint on over HTTP on /. This is required for the health checks to verify Vault's status is using an external load balancer. Only the health status endpoint is exposed, and it is only accessible from Google's load balancer addresses."
  type        = string
  default     = "58200"
}

variable "vault_service_account_email" {
  description = "Vault service account email"
  type        = string
  default     = ""
}

variable "vault_storage_bucket" {
  description = "Storage bucket name where the backend is configured. This bucket will not be created in this module"
  type        = string
  default     = ""
}

variable "vault_tls_bucket" {
  description = "GCS Bucket override where Vault will expect TLS certificates are stored."
  type        = string
  default     = ""
}

variable "vault_tls_cert_filename" {
  description = "GCS object path within the vault_tls_bucket. This is the vault server certificate."
  type        = string
  default     = "vault.crt"
}

variable "vault_tls_disable_client_certs" {
  description = "Use client certificates when provided. You may want to disable this if users will not be authenticating to Vault with client certificates."
  type        = string
  default     = false
}

variable "vault_tls_key_filename" {
  description = "Encrypted and base64 encoded GCS object path within the vault_tls_bucket. This is the Vault TLS private key."
  type        = string
  default     = "vault.key.enc"
}

variable "vault_tls_kms_key" {
  description = "Fully qualified name of the KMS key, for example, vault_tls_kms_key = \"projects/PROJECT_ID/locations/LOCATION/keyRings/KEYRING/cryptoKeys/KEY_NAME\". This key should have been used to encrypt the TLS private key if Terraform is not managing TLS. The Vault service account will be granted access to the KMS Decrypter role once it is created so it can pull from this the vault_tls_bucket at boot time. This option is required when manage_tls is set to false."
  type        = string
  default     = ""
}

variable "vault_tls_kms_key_project" {
  description = "Project ID where the KMS key is stored. By default, same as project_id"
  type        = string
  default     = ""
}

variable "vault_tls_require_and_verify_client_cert" {
  description = "Always use client certificates. You may want to disable this if users will not be authenticating to Vault with client certificates."
  type        = string
  default     = false
}

variable "vault_ui_enabled" {
  description = "Controls whether the Vault UI is enabled and accessible."
  type        = string
  default     = true
}

variable "vault_update_policy_type" {
  description = "Options are OPPORTUNISTIC or PROACTIVE. If PROACTIVE, the instance group manager proactively executes actions in order to bring instances to their target versions"
  type        = string
  default     = "OPPORTUNISTIC"
}

variable "vault_version" {
  description = "Version of vault to install. This version must be 1.0+ and must be published on the HashiCorp releases service."
  type        = string
  default     = "1.6.0"
}

variable "zones" {
  description = "The zones to distribute instances across.  If empty, all zones in the region are used.  ['us-west1-a', 'us-west1-b', 'us-west1-c']"
  type        = list(string)
  default     = []
}
