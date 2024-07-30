module "ec2_instance_sonarqube" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name = "Sonarqube-Server"

  instance_type               = "t2.medium"
  key_name                    = "jenkins-server-key"
  monitoring                  = true
  vpc_security_group_ids      = [module.sonarqube_service_sg.security_group_id]
  subnet_id                   = module.vpc.public_subnets[0]
  availability_zone           = data.aws_availability_zones.azs.names[0]
  associate_public_ip_address = true
  user_data                   = file("user-data-sonarqube.sh")
  ami                         = "ami-0c7217cdde317cfec"

  tags = {
    Name        = "Sonarqube-Server"
    Environment = "dev"
  }
}

