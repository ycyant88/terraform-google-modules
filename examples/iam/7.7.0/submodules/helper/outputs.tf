output "bindings_additive" {
  value       = module.iam_helper.bindings_additive
  description = "Map of additive bindings for entities. Unwinded by members."
}

output "bindings_authoritative" {
  value       = module.iam_helper.bindings_authoritative
  description = "Map of authoritative bindings for entities. Unwinded by roles."
}

output "bindings_by_member" {
  value       = module.iam_helper.bindings_by_member
  description = "List of bindings for entities unwinded by members."
}

output "set_additive" {
  value       = module.iam_helper.set_additive
  description = "A set of additive binding keys (from bindings_additive) to be used in for_each. Unwinded by members."
}

output "set_authoritative" {
  value       = module.iam_helper.set_authoritative
  description = "A set of authoritative binding keys (from bindings_authoritative) to be used in for_each. Unwinded by roles."
}
