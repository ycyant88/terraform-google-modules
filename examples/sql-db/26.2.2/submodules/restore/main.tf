module "sql-db" {
  source           = "terraform-google-modules/sql-db/google"
  version          = "26.2.2"
  import_databases = var.import_databases
  import_uri       = var.import_uri
  project_id       = var.project_id
  region           = var.region
  service_account  = var.service_account
  sql_instance     = var.sql_instance
}
