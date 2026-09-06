variable "force_destroy_bucket" {
  description = "Set to true to force deletion of backend bucket on terraform destroy"
  type        = string
  default     = false
}

variable "kms_key_name" {
  description = "The name of the Cloud KMS Key used for asset encryption/decryption"
  type        = string
  default     = "vault-init"
}

variable "kms_keyring_name" {
  description = "The name of the Cloud KMS KeyRing for asset encryption"
  type        = string
  default     = ""
}

variable "machine_type" {
  description = "The machine type for the instance"
  type        = string
  default     = "n1-standard-1"
}

variable "network" {
  description = "The network to deploy to"
  type        = string
  default     = "default"
}

variable "project_id" {
  description = "The project ID to add the IAM bindings for the service account to"
  type        = string
  default     = ""
}

variable "region" {
  description = "The region to create the instance in."
  type        = string
  default     = ""
}

variable "storage_bucket" {
  description = "Name of the GCS bucket for the Vault backend storage"
  type        = string
  default     = ""
}

variable "subnetwork" {
  description = "The subnetwork to deploy to"
  type        = string
  default     = "default"
}

variable "tls_ca_subject" {
  description = "The subject block for the root CA certificate."
  type        = map(any)
  default     = { "common_name" : "Example Inc. Root", "country" : "US", "locality" : "The Intranet", "organization" : "Example, Inc", "organizational_unit" : "Department of Certificate Authority", "postal_code" : "95559-1227", "province" : "CA", "street_address" : ["123 Example Street"] }
}

variable "tls_cn" {
  description = "The TLS Common Name for the TLS certificates"
  type        = string
  default     = "vault.example.net"
}

variable "tls_dns_names" {
  description = "List of DNS names added to the Vault server self-signed certificate"
  type        = list(any)
  default     = ["vault.example.net"]
}

variable "tls_ips" {
  description = "List of IP addresses added to the Vault server self-signed certificate"
  type        = list(any)
  default     = ["127.0.0.1"]
}

variable "tls_ou" {
  description = "The TLS Organizational Unit for the TLS certificate"
  type        = string
  default     = "IT Security Operations"
}

variable "vault_args" {
  description = "Additional command line arguments passed to vault server"
  type        = string
  default     = ""
}

variable "vault_version" {
  description = "The version of vault to install."
  type        = string
  default     = "0.8.1"
}

variable "zone" {
  description = "The zone to create the instance in."
  type        = string
  default     = ""
}
