output "asm_wait" {
  value       = module.kubernetes-engine_asm.asm_wait
  description = "An output to use when you want to depend on ASM finishing"
}

output "hub_wait" {
  value       = module.kubernetes-engine_asm.hub_wait
  description = "An output to use when you want to depend on GKE hub finishing"
}
