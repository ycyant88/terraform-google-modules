output "generated_user_password" {
  value       = module.sql-db.generated_user_password
  description = "The auto generated default user password if no input password was provided"
}

output "instance_address" {
  value       = module.sql-db.instance_address
  description = "The IPv4 address of the master database instnace"
}

output "instance_address_time_to_retire" {
  value       = module.sql-db.instance_address_time_to_retire
  description = "The time the master instance IP address will be reitred. RFC 3339 format."
}

output "instance_name" {
  value       = module.sql-db.instance_name
  description = "The name of the database instance"
}

output "self_link" {
  value       = module.sql-db.self_link
  description = "Self link to the master instance"
}
