variable "bgp" {
  description = "BGP information specific to this router."
  type        = any
  default     = ""
}

variable "name" {
  description = "Name of the router"
  type        = string
  default     = ""
}

variable "nats" {
  description = "NATs to deploy on this router."
  type        = any
  default     = []
}

variable "network" {
  description = "A reference to the network to which this router belongs"
  type        = string
  default     = ""
}

variable "project" {
  description = "The project ID to deploy to"
  type        = string
  default     = ""
}

variable "region" {
  description = "Region where the router resides"
  type        = string
  default     = ""
}
