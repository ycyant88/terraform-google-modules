output "asm_wait" {
  value       = module.kubernetes-engine.asm_wait
  description = "An output to use when you want to depend on ASM finishing"
}
