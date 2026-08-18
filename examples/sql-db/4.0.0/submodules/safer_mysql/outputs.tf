output "generated_user_password" {
  value       = module.sql-db_safer_mysql.generated_user_password
  description = "The auto generated default user password if not input password was provided"
}

output "instance_connection_name" {
  value       = module.sql-db_safer_mysql.instance_connection_name
  description = "The connection name of the master instance to be used in connection strings"
}

output "instance_ip_address" {
  value       = module.sql-db_safer_mysql.instance_ip_address
  description = "The IPv4 address assigned for the master instance"
}

output "instance_name" {
  value       = module.sql-db_safer_mysql.instance_name
  description = "The instance name for the master instance"
}

output "instance_self_link" {
  value       = module.sql-db_safer_mysql.instance_self_link
  description = "The URI of the master instance"
}

output "instance_service_account_email_address" {
  value       = module.sql-db_safer_mysql.instance_service_account_email_address
  description = "The service account email address assigned to the master instance"
}

output "private_ip_address" {
  value       = module.sql-db_safer_mysql.private_ip_address
  description = "The first private (PRIVATE) IPv4 address assigned for the master instance"
}

output "public_ip_address" {
  value       = module.sql-db_safer_mysql.public_ip_address
  description = "The first public (PRIMARY) IPv4 address assigned for the master instance"
}

output "read_replica_instance_names" {
  value       = module.sql-db_safer_mysql.read_replica_instance_names
  description = "The instance names for the read replica instances"
}

output "replicas_instance_connection_names" {
  value       = module.sql-db_safer_mysql.replicas_instance_connection_names
  description = "The connection names of the replica instances to be used in connection strings"
}

output "replicas_instance_self_links" {
  value       = module.sql-db_safer_mysql.replicas_instance_self_links
  description = "The URIs of the replica instances"
}

output "replicas_instance_service_account_email_addresses" {
  value       = module.sql-db_safer_mysql.replicas_instance_service_account_email_addresses
  description = "The service account email addresses assigned to the replica instances"
}
