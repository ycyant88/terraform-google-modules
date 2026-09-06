variable "input_workflow_state" {
  description = "Name of the BigQuery ML GenAI remote model that connects to the LLM used for text generation"
  type        = string
  default     = ""
}

variable "workflow_id" {
  description = "The identifer of a workflow created by Terraform. Format is projects/{project ID}/locations/{region}/workflows/{workflow name}"
  type        = string
  default     = ""
}
