variable "container" {
  description = "A description of the container to deploy"
  type        = map(any)
  default     = { "command" : "ls", "image" : "gcr.io/google-containers/busybox" }
}

variable "restart_policy" {
  description = "The restart policy for a Docker container. Defaults to OnFailure"
  type        = string
  default     = "OnFailure"
}

variable "volumes" {
  description = "A set of Docker Volumes to configure"
  type        = list(any)
  default     = []
}
