output "revision_name" {
  value       = module.kubernetes-engine_asm.revision_name
  description = "The name of the installed managed ASM revision."
}

output "wait" {
  value       = module.kubernetes-engine_asm.wait
  description = "An output to use when depending on the ASM installation finishing."
}
