output "jenkins_instance_initial_password" {
  value       = module.jenkins.jenkins_instance_initial_password
  description = "The initial password assigned to the Jenkins instance's user username"
}

output "jenkins_instance_name" {
  value       = module.jenkins.jenkins_instance_name
  description = "The name of the running Jenkins instance"
}

output "jenkins_instance_public_ip" {
  value       = module.jenkins.jenkins_instance_public_ip
  description = "The public IP of the Jenkins instance"
}

output "jenkins_instance_service_account_email" {
  value       = module.jenkins.jenkins_instance_service_account_email
  description = "The email address of the created service account"
}

output "jenkins_instance_zone" {
  value       = module.jenkins.jenkins_instance_zone
  description = "The zone in which Jenkins is running"
}
