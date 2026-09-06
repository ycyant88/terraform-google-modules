module "sql-db" {
  source           = "terraform-google-modules/sql-db/google"
  version          = "15.1.0"
  import_databases = var.import_databases
  import_uri       = var.import_uri
  project_id       = var.project_id
  region           = var.region
  service_account  = var.service_account
  sql_instance     = var.sql_instance
}
