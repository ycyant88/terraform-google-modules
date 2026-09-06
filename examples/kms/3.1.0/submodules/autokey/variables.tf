variable "autokey_folder_number" {
  description = "The Autokey folder number used by Autokey config resource. Required when using Autokey."
  type        = string
  default     = ""
}

variable "autokey_handles" {
  description = "(Optional) A KeyHandle is a resource used by Autokey to auto-provision CryptoKeys for CMEK for a particular service.\n- name: The resource name for the KeyHandle.\n- resource_type_selector: Indicates the resource type that the resulting CryptoKey is meant to protect, in the following format: {SERVICE}.googleapis.com/{TYPE}. For example, storage.googleapis.com/Bucket. All Cloud KMS Autokey compatible services available at https://cloud.google.com/kms/docs/autokey-overview#compatible-services.\n- location: The location for the KeyHandle. A full list of valid locations can be found by running gcloud kms locations list.\n- project: The ID of the project in which the resource belongs. If it is not provided, the provider project is used.\n"
  type = map(object({
    name                   = string
    resource_type_selector = string
    location               = string
    project                = string
  }))
  default = null
}

variable "project_id" {
  description = "Project id where the Autokey configuration and KeyHandles will be created."
  type        = string
  default     = ""
}
