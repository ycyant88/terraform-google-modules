variable "consent_stores" {
  description = "Datastore that contain all information related to the configuration and operation of the Consent Management API (https://cloud.google.com/healthcare/docs/how-tos/consent-managing)."
  type        = any
  default     = []
}

variable "dicom_stores" {
  description = "Datastore that conforms to the DICOM (https://www.dicomstandard.org/about/) standard for Healthcare information exchange."
  type        = any
  default     = []
}

variable "fhir_stores" {
  description = "Datastore that conforms to the FHIR standard for Healthcare information exchange."
  type        = any
  default     = []
}

variable "hl7_v2_stores" {
  description = "Datastore that conforms to the HL7 V2 (https://www.hl7.org/hl7V2/STU3/) standard for Healthcare information exchange."
  type        = any
  default     = []
}

variable "iam_members" {
  description = "Updates the IAM policy to grant a role to a new member. Other members for the role for the dataset are preserved."
  type = list(object({
    role   = string
    member = string
  }))
  default = []
}

variable "location" {
  description = "The location for the Dataset."
  type        = string
  default     = ""
}

variable "name" {
  description = "The resource name for the Dataset."
  type        = string
  default     = ""
}

variable "pipeline_jobs" {
  description = "Mapping and reconciliation pipelines to create a longitudinal patient record within a harmonized FHIR store. (https://cloud.google.com/healthcare-api/healthcare-data-engine/docs/pipelines)."
  type        = any
  default     = []
}

variable "project" {
  description = "The ID of the project in which the resource belongs."
  type        = string
  default     = ""
}

variable "time_zone" {
  description = "The default timezone used by this dataset."
  type        = string
  default     = null
}

variable "workspaces" {
  description = "Workspace that holds all mappings and the Data Mapper IDE for organizing and controlling access (https://cloud.google.com/healthcare-api/healthcare-data-engine/docs/manage-workspaces)."
  type        = any
  default     = []
}
