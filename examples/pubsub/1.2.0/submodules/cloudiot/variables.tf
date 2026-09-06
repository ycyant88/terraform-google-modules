variable "event_notification_config" {
  description = "The event notification configuration for the Cloud IoT registry. This contains topic, topic_labels, pull_subscriptions and push_subscriptions and create_topic."
  type = object({
    topic              = string
    topic_labels       = map(string)
    push_subscriptions = list(map(string))
    pull_subscriptions = list(map(string))
    create_topic       = bool
  })
  default = { "create_topic" : false, "pull_subscriptions" : [], "push_subscriptions" : [], "topic" : "", "topic_labels" : {} }
}

variable "http_enabled_state" {
  description = "The field allows HTTP_ENABLED or HTTP_DISABLED"
  type        = string
  default     = "HTTP_DISABLED"
}

variable "mqtt_enabled_state" {
  description = "The field allows MQTT_ENABLED or MQTT_DISABLED"
  type        = string
  default     = "MQTT_ENABLED"
}

variable "name" {
  description = "The Cloud IoT registry name"
  type        = string
  default     = ""
}

variable "project_id" {
  description = "The project ID to manage the Cloud IoT resources"
  type        = string
  default     = ""
}

variable "public_key_certificates" {
  description = "The list for public key certificates"
  type        = list(object({ format = string, certificate = string }))
  default     = []
}

variable "region" {
  description = "The region to host the registry"
  type        = string
  default     = ""
}

variable "state_notification_config" {
  description = "The state notification configuration for the Cloud IoT registry. This contains topic, topic_labels, pull_subscriptions and push_subscriptions and create_topic."
  type = object({
    topic              = string
    topic_labels       = map(string)
    push_subscriptions = list(map(string))
    pull_subscriptions = list(map(string))
    create_topic       = bool
  })
  default = { "create_topic" : false, "pull_subscriptions" : [], "push_subscriptions" : [], "topic" : "", "topic_labels" : {} }
}
