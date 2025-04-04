terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"  # Change to your preferred region
}

# Create IAM User
resource "aws_iam_user" "new_user" {
  name = "terraform-user"
}

# Create EC2 Instance
resource "aws_instance" "instance" {
  ami           = "ami-00a929b66ed6e0de6"  # Amazon Linux 
  instance_type = "t2.micro"


}
