output "region_short_name" {
  value       = module.utils.region_short_name
  description = "The 4 or 5 character shortname of the region specified in var.region."
}

output "region_short_name_map" {
  value       = module.utils.region_short_name_map
  description = "The 4 or 5 character shortname of any given region."
}
