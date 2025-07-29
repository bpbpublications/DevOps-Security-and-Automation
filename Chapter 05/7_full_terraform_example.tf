# Define the provider
provider "aws" {
  region = "us-east-1"
}

# Create a security group
resource "aws_security_group" "allow_http" {
  name        = "allow_http"
  description = "Allow HTTP traffic"
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create an EC2 instance
resource "aws_instance" "web" {
  ami           = "ami-0c94855ba95c574c8"
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.allow_http.id]

  tags = {
    Name = "WebServer"
  }
}

