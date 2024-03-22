provider "aws" {
  region = "us-east-1" 
}

resource "aws_instance" "spring_app_instance" {
  ami           = "ami-04c5190fe1196191a"
  instance_type = "t2.small" 
  key_name      = "ansible_demo"

  subnet_id              = "subnet-389ffc02"
  vpc_security_group_ids = ["sg-06df0f2fd51719fc8"]

  tags = {
    Name = "spring-app-${var.git_sha}"
  }
}

