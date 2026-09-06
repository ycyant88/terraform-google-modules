output "revision_name" {
  value       = module.kubernetes-engine.revision_name
  description = "The name of the installed managed ASM revision."
}

output "wait" {
  value       = module.kubernetes-engine.wait
  description = "An output to use when depending on the ASM installation finishing."
}
