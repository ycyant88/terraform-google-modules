module "event-function" {
  source                = "terraform-google-modules/event-function/google"
  version               = "1.0.0"
  available_memory_mb   = var.available_memory_mb
  description           = var.description
  entry_point           = var.entry_point
  environment_variables = var.environment_variables
  event_trigger         = var.event_trigger
  labels                = var.labels
  name                  = var.name
  project_id            = var.project_id
  region                = var.region
  runtime               = var.runtime
  source_repository_url = var.source_repository_url
  timeout_s             = var.timeout_s
}
