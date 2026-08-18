output "forseti-server-git-public-key-openssh" {
  value       = module.forseti_server.forseti-server-git-public-key-openssh
  description = "The public OpenSSH key generated to allow the Forseti Server to clone the policy library repository."
}

output "forseti-server-vm-internal-dns" {
  value       = module.forseti_server.forseti-server-vm-internal-dns
  description = "Forseti Server internal DNS"
}

output "forseti-server-vm-ip" {
  value       = module.forseti_server.forseti-server-vm-ip
  description = "Forseti Server VM private IP address"
}

output "forseti-server-vm-name" {
  value       = module.forseti_server.forseti-server-vm-name
  description = "Forseti Server VM name"
}
