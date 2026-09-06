variable "project_id" {
  description = "Project in which the vpc connector will be deployed."
  type        = string
  default     = ""
}

variable "vpc_connectors" {
  description = "List of VPC serverless connectors."
  type        = list(map(string))
  default     = []
}
