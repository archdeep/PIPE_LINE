provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0ac4dfaf1c5c0cce9" # Replace with your desired AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "GitHub-Actions-EC2"
  }
}

output "public_ip" {
  value = aws_instance.example.public_ip
}

