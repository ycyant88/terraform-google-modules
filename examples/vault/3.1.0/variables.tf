variable "kms_crypto_key" {
  description = "The name of the Cloud KMS Key used for encrypting initial TLS certificates and\nfor configuring Vault auto-unseal. Terraform will create this key.\n"
  type        = string
  default     = "vault-init"
}

variable "kms_keyring" {
  description = "Name of the Cloud KMS KeyRing for asset encryption. Terraform will create this\nkeyring.\n"
  type        = string
  default     = "vault"
}

variable "kms_protection_level" {
  description = "The protection level to use for the KMS crypto key.\n"
  type        = string
  default     = "software"
}

variable "manage_tls" {
  description = "Set to \"false\" if you'd like to manage and upload your own TLS files, if you do not want this module\nto generate them. By default this module expects the following files at the root of the bucket, but these\ncan be overriden:\n- ca.crt: Root CA public certificate\n- vault.crt: Vault server public certificate, signed by the ca.crt\n- vault.key.enc Vault server certificate private key, encrypted with the kms key provided and base64 encoded.\n"
  type        = bool
  default     = true
}

variable "network_subnet_cidr_range" {
  description = "CIDR block range for the subnet.\n"
  type        = string
  default     = "10.127.0.0/20"
}

variable "project_id" {
  description = "ID of the project in which to create resources and add IAM bindings.\n"
  type        = string
  default     = ""
}

variable "project_services" {
  description = "List of services to enable on the project where Vault will run. These services\nare required in order for this Vault setup to function.\n\nTo disable, set to the empty list []. You may want to disable this if the\nservices have already been enabled and the current user does not have permission\nto enable new services.\n"
  type        = list(string)
  default     = ["cloudkms.googleapis.com", "cloudresourcemanager.googleapis.com", "compute.googleapis.com", "iam.googleapis.com", "logging.googleapis.com", "monitoring.googleapis.com"]
}

variable "region" {
  description = "Region in which to create resources.\n"
  type        = string
  default     = "us-east4"
}

variable "service_account_name" {
  description = "Name of the Vault service account.\n"
  type        = string
  default     = "vault-admin"
}

variable "service_account_project_additional_iam_roles" {
  description = "List of custom IAM roles to add to the project.\n"
  type        = list(string)
  default     = []
}

variable "service_account_project_iam_roles" {
  description = "List of IAM roles for the Vault admin service account to function. If you need\nto add additional roles, update service_account_project_additional_iam_roles\ninstead.\n"
  type        = list(string)
  default     = ["roles/logging.logWriter", "roles/monitoring.metricWriter", "roles/monitoring.viewer"]
}

variable "service_account_storage_bucket_iam_roles" {
  description = "List of IAM roles for the Vault admin service account to have on the storage\nbucket.\n"
  type        = list(string)
  default     = ["roles/storage.legacyBucketReader", "roles/storage.objectAdmin"]
}

variable "ssh_allowed_cidrs" {
  description = "List of CIDR blocks to allow access to SSH into nodes. To disable, set to the\nempty list [].\n"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "storage_bucket_class" {
  description = "Type of data storage to use. If you change this value, you will also need to\nchoose a storage_bucket_location which matches this parameter type.\n"
  type        = string
  default     = "MULTI_REGIONAL"
}

variable "storage_bucket_enable_versioning" {
  description = "Set to true to enable object versioning in the GCS bucket.. You may want to\ndefine lifecycle rules if you want a finite number of old versions.\n"
  type        = string
  default     = false
}

variable "storage_bucket_force_destroy" {
  description = "Set to true to force deletion of backend bucket on terraform destroy.\n"
  type        = string
  default     = false
}

variable "storage_bucket_lifecycle_rules" {
  description = "If you enable versioning, you may want to expire old versions to configure\na specific retention. Please, check the documentation for the map keys you\nshould use.\n\nThis is specified as a list of objects:\n\n    storage_lifecycle_rules = [\n      {\n        action = {\n          type = \"Delete\"\n        }\n\n        conditions = {\n          age     = 60\n          is_live = false\n        }\n      }\n    ]\n"
  type = list(object({
    action    = map(any)
    condition = map(any)
  }))
  default = []
}

variable "storage_bucket_location" {
  description = "Location for the Google Cloud Storage bucket in which Vault data will be stored.\n"
  type        = string
  default     = "us"
}

variable "storage_bucket_name" {
  description = "Name of the Google Cloud Storage bucket for the Vault backend storage. This must\nbe globally unique across of of GCP. If left as the empty string, this will\ndefault to: \"<project-id>-vault-data\".\n"
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
  description = "Save the CA public certificate on the local filesystem. The CA is always stored\nin GCS, but this option also saves it to the filesystem.\n"
  type        = bool
  default     = true
}

variable "vault_allowed_cidrs" {
  description = "List of CIDR blocks to allow access to the Vault nodes. Since the load balancer\nis a pass-through load balancer, this must also include all IPs from which you\nwill access Vault. The default is unrestricted (any IP address can access\nVault). It is recommended that you reduce this to a smaller list.\n\nTo disable, set to the empty list []. Even if disabled, internal rules will\nstill allow the health checker to probe the nodes for health.\n"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "vault_args" {
  description = "Additional command line arguments passed to Vault server/\n"
  type        = string
  default     = ""
}

variable "vault_ca_cert_filename" {
  description = "GCS object path within the vault_tls_bucket. This is the root CA certificate.\n"
  type        = string
  default     = "ca.crt"
}

variable "vault_instance_base_image" {
  description = "Base operating system image in which to install Vault. This must be a\nDebian-based system at the moment due to how the metadata startup script\nruns.\n"
  type        = string
  default     = "debian-cloud/debian-9"
}

variable "vault_instance_labels" {
  description = "Labels to apply to the Vault instances.\n"
  type        = map(string)
  default     = {}
}

variable "vault_instance_metadata" {
  description = "Additional metadata to add to the Vault instances.\n"
  type        = map(string)
  default     = {}
}

variable "vault_instance_tags" {
  description = "Additional tags to apply to the instances. Note \"allow-ssh\" and \"allow-vault\"\nwill be present on all instances.\n"
  type        = list(string)
  default     = []
}

variable "vault_log_level" {
  description = "Log level to run Vault in. See the Vault documentation for valid values.\n"
  type        = string
  default     = "warn"
}

variable "vault_machine_type" {
  description = "Machine type to use for Vault instances.\n"
  type        = string
  default     = "n1-standard-1"
}

variable "vault_max_num_servers" {
  description = "Maximum number of Vault server nodes to run at one time. The group will not\nautoscale beyond this number.\n"
  type        = string
  default     = "7"
}

variable "vault_min_num_servers" {
  description = "Minimum number of Vault server nodes in the autoscaling group. The group will\nnot have less than this number of nodes.\n"
  type        = string
  default     = "1"
}

variable "vault_port" {
  description = "Numeric port on which to run and expose Vault. This should be a high-numbered\nport, since Vault does not run as a root user and therefore cannot bind to\nprivledged ports like 80 or 443. The default is 8200, the standard Vault port.\n"
  type        = string
  default     = "8200"
}

variable "vault_proxy_port" {
  description = "Port to expose Vault's health status endpoint on over HTTP on /. This is\nrequired for the health checks to verify Vault's status. Only the health status\nendpoint is exposed, and it is only accessible from Google's load balancer\naddresses.\n"
  type        = string
  default     = "58200"
}

variable "vault_tls_bucket" {
  description = "GCS Bucket override where Vault will expect TLS certificates are stored.\n"
  type        = string
  default     = ""
}

variable "vault_tls_cert_filename" {
  description = "GCS object path within the vault_tls_bucket. This is the vault server certificate.\n"
  type        = string
  default     = "vault.crt"
}

variable "vault_tls_disable_client_certs" {
  description = "Use and expect client certificates. You may want to disable this if users will\nnot be authenticating to Vault with client certificates.\n"
  type        = string
  default     = false
}

variable "vault_tls_key_filename" {
  description = "Encrypted and base64 encoded GCS object path within the vault_tls_bucket. This is the Vault TLS private key.\n"
  type        = string
  default     = "vault.key.enc"
}

variable "vault_ui_enabled" {
  description = "Controls whether the Vault UI is enabled and accessible.\n"
  type        = string
  default     = true
}

variable "vault_version" {
  description = "Version of vault to install. This version must be 1.0+ and must be published on\nthe HashiCorp releases service.\n"
  type        = string
  default     = "1.1.3"
}
