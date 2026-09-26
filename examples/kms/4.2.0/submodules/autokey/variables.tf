variable "autokey_folder_number" {
  description = "The folder number on which autokey will be configured and enabled. Required when using Autokey."
  type        = string
  default     = ""
}

variable "key_project_id" {
  description = "The ID of the project in which kms keyrings and keys will be provisioned by the Autokey."
  type        = string
  default     = ""
}
