output "jenkins_public_ip" {
  description = "Public IP address of the jenkins server"
  value       = module.ec2_instance_jenkins.public_ip
}

output "jenkins_website_url" {
  value     = join ("", ["http://", module.ec2_instance_jenkins.public_ip, ":", "8080"])
}

output "docker_public_ip" {
  description = "Public IP address of the docker server"
  value       = module.ec2_instance_docker.public_ip
}

output "docker_website_url" {
  value     = join ("", ["http://", module.ec2_instance_docker.public_ip, ":", "8085"])
}

output "sonarqube_public_ip" {
  description = "Public IP address of the sonarqube server"
  value       = module.ec2_instance_sonarqube.public_ip
}

output "sonarqube_website_url" {
  value     = join ("", ["http://", module.ec2_instance_sonarqube.public_ip, ":", "9000"])
}