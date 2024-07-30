terraform {
  backend "s3" {
    bucket = "terraform-jenkins-hm"
    key    = "jenkins/terraform.tfstate"
    region = "us-east-1"
  }
}