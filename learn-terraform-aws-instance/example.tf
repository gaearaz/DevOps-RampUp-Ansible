# provider "aws" {
#   profile = "default"
#   region  = "us-east-1"
# }

# resource "aws_instance" "example" {
#   ami           = "ami-0e84e211558a022c0"
#   instance_type = "t2.micro"
# }

# resource "aws_eip" "ip" {
#   vpc      = true
#   instance = aws_instance.example.id
# }
