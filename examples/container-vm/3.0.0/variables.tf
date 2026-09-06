variable "container" {
  description = "A description of the container to deploy"
  type        = any
  default     = { "command" : "ls", "image" : "gcr.io/google-containers/busybox" }
}

variable "cos_image_family" {
  description = "The COS image family to use (eg: stable, beta, or dev)"
  type        = string
  default     = "stable"
}

variable "cos_image_name" {
  description = "Name of a specific COS image to use instead of the latest cos family image"
  type        = string
  default     = ""
}

variable "restart_policy" {
  description = "The restart policy for a Docker container. Defaults to OnFailure"
  type        = string
  default     = "OnFailure"
}

variable "volumes" {
  description = "A set of Docker Volumes to configure"
  type        = any
  default     = []
}
