output "ops_agent_policy" {
  value       = module.cloud-operations_ops-agent-policy.ops_agent_policy
  description = "The generated policy for installing/uninstalling the ops agent."
}
