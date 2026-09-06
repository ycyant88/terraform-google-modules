variable "allowed_audiences" {
  description = "Workload Identity Pool Provider allowed audiences. Currently, GitHub only allows sigstore"
  type        = list(string)
  default     = ["sigstore"]
}

variable "attribute_condition" {
  description = "Workload Identity Pool Provider attribute condition expression. [More info](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool_provider#attribute_condition)"
  type        = string
  default     = ""
}

variable "attribute_mapping" {
  description = "Workload Identity Pool Provider attribute mapping. [More info](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool_provider#attribute_mapping)"
  type        = map(any)
  default     = { "attribute.actor" : "assertion.actor", "attribute.aud" : "assertion.aud", "attribute.repository" : "assertion.repository", "google.subject" : "assertion.sub" }
}

variable "pool_description" {
  description = "Workload Identity Pool description"
  type        = string
  default     = "Workload Identity Pool managed by Terraform"
}

variable "pool_display_name" {
  description = "Workload Identity Pool display name"
  type        = string
  default     = ""
}

variable "pool_id" {
  description = "Workload Identity Pool ID"
  type        = string
  default     = ""
}

variable "project_id" {
  description = "The project id to create Workload Identity Pool"
  type        = string
  default     = ""
}

variable "provider_description" {
  description = "Workload Identity Pool Provider description"
  type        = string
  default     = "Workload Identity Pool Provider managed by Terraform"
}

variable "provider_display_name" {
  description = "Workload Identity Pool Provider display name"
  type        = string
  default     = ""
}

variable "provider_id" {
  description = "Workload Identity Pool Provider id"
  type        = string
  default     = ""
}

variable "sa_mapping" {
  description = "Service Account emails and corresponding WIF provider attributes. If attribute is set to * all identities in the pool are granted access to SAs."
  type = map(object({
    sa_name   = string
    attribute = string
  }))
  default = {}
}
