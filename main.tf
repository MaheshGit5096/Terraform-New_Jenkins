provider "aws" {
  region = "ap-south-1"  # Set your desired AWS region
}

resource "aws_instance" "demo" {
  ami           = "ami-039e1f129f345d75f"  # Replace with the desired AMI ID
  instance_type = "t2.micro"                # Replace with the desired instance type
  key_name      = "test"              # Replace with your key pair name

  tags = {
    Name = "jenkins"               # Replace with your desired instance name
  }
}

