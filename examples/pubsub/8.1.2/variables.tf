variable "bigquery_subscriptions" {
  description = "The list of the Bigquery push subscriptions."
  type = list(object({
    name                       = string,
    table                      = string,
    use_topic_schema           = optional(bool),
    use_table_schema           = optional(bool),
    write_metadata             = optional(bool),
    drop_unknown_fields        = optional(bool),
    ack_deadline_seconds       = optional(number),
    retain_acked_messages      = optional(bool),
    message_retention_duration = optional(string),
    enable_message_ordering    = optional(bool),
    expiration_policy          = optional(string),
    filter                     = optional(string),
    dead_letter_topic          = optional(string),
    max_delivery_attempts      = optional(number),
    maximum_backoff            = optional(string),
    minimum_backoff            = optional(string)
  }))
  default = []
}

variable "cloud_storage_subscriptions" {
  description = "The list of the Cloud Storage push subscriptions."
  type = list(object({
    name                       = string,
    bucket                     = string,
    filename_prefix            = optional(string),
    filename_suffix            = optional(string),
    filename_datetime_format   = optional(string),
    max_duration               = optional(string),
    max_bytes                  = optional(string),
    max_messages               = optional(string),
    output_format              = optional(string),
    write_metadata             = optional(bool),
    use_topic_schema           = optional(bool),
    ack_deadline_seconds       = optional(number),
    retain_acked_messages      = optional(bool),
    message_retention_duration = optional(string),
    enable_message_ordering    = optional(bool),
    expiration_policy          = optional(string),
    filter                     = optional(string),
    dead_letter_topic          = optional(string),
    max_delivery_attempts      = optional(number),
    maximum_backoff            = optional(string),
    minimum_backoff            = optional(string)
  }))
  default = []
}

variable "create_subscriptions" {
  description = "Specify true if you want to create subscriptions."
  type        = bool
  default     = true
}

variable "create_topic" {
  description = "Specify true if you want to create a topic."
  type        = bool
  default     = true
}

variable "grant_bigquery_project_roles" {
  description = "Specify true if you want to add bigquery.metadataViewer and bigquery.dataEditor roles to the default Pub/Sub SA."
  type        = bool
  default     = true
}

variable "grant_token_creator" {
  description = "Specify true if you want to add token creator role to the default Pub/Sub SA."
  type        = bool
  default     = true
}

variable "message_storage_policy" {
  description = "A map of storage policies. Default - inherit from organization's Resource Location Restriction policy."
  type        = map(any)
  default     = {}
}

variable "project_id" {
  description = "The project ID to manage the Pub/Sub resources."
  type        = string
  default     = ""
}

variable "pull_subscriptions" {
  description = "The list of the pull subscriptions."
  type = list(object({
    name                         = string,
    ack_deadline_seconds         = optional(number),
    expiration_policy            = optional(string),
    dead_letter_topic            = optional(string),
    max_delivery_attempts        = optional(number),
    retain_acked_messages        = optional(bool),
    message_retention_duration   = optional(string),
    maximum_backoff              = optional(string),
    minimum_backoff              = optional(string),
    filter                       = optional(string),
    enable_message_ordering      = optional(bool),
    service_account              = optional(string),
    enable_exactly_once_delivery = optional(bool),
  }))
  default = []
}

variable "push_subscriptions" {
  description = "The list of the push subscriptions."
  type = list(object({
    name                       = string,
    ack_deadline_seconds       = optional(number),
    push_endpoint              = optional(string),
    x-goog-version             = optional(string),
    oidc_service_account_email = optional(string),
    audience                   = optional(string),
    expiration_policy          = optional(string),
    dead_letter_topic          = optional(string),
    retain_acked_messages      = optional(bool),
    message_retention_duration = optional(string),
    max_delivery_attempts      = optional(number),
    maximum_backoff            = optional(string),
    minimum_backoff            = optional(string),
    filter                     = optional(string),
    enable_message_ordering    = optional(bool),
    no_wrapper                 = optional(bool),
    write_metadata             = optional(bool),
  }))
  default = []
}

variable "schema" {
  description = "Schema for the topic."
  type = object({
    name       = string
    type       = string
    definition = string
    encoding   = string
  })
  default = null
}

variable "subscription_labels" {
  description = "A map of labels to assign to every Pub/Sub subscription."
  type        = map(string)
  default     = {}
}

variable "topic" {
  description = "The Pub/Sub topic name."
  type        = string
  default     = ""
}

variable "topic_kms_key_name" {
  description = "The resource name of the Cloud KMS CryptoKey to be used to protect access to messages published on this topic."
  type        = string
  default     = null
}

variable "topic_labels" {
  description = "A map of labels to assign to the Pub/Sub topic."
  type        = map(string)
  default     = {}
}

variable "topic_message_retention_duration" {
  description = "The minimum duration in seconds to retain a message after it is published to the topic."
  type        = string
  default     = null
}
