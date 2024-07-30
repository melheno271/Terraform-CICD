module "ec2_instance_jenkins" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name = "Jenkins-Server"

  instance_type               = "t2.medium"
  key_name                    = "jenkins-server-key"
  monitoring                  = true
  vpc_security_group_ids      = [module.jenkins_service_sg.security_group_id]
  subnet_id                   = module.vpc.public_subnets[0]
  availability_zone           = data.aws_availability_zones.azs.names[0]
  associate_public_ip_address = true
  user_data                   = file("user-data-jenkins.sh")
  ami                         = "ami-0c7217cdde317cfec"

  tags = {
    Name        = "Jenkins-Server"
    Environment = "dev"
  }
}

