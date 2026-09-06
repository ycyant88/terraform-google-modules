module "bigquery" {
  source               = "terraform-google-modules/bigquery/google"
  version              = "10.2.0"
  input_workflow_state = var.input_workflow_state
  workflow_id          = var.workflow_id
}
