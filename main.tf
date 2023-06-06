provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-007ec828a062d87a5"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-example"
  }
}
