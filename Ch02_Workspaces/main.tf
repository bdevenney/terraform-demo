terraform {
  backend "s3" {
    bucket = "terraform-up-and-running-state-bit"
    key    = "workspaces-example/terraform.tfstate"
    region = "eu-west-2"

    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-007ec828a062d87a5"
  instance_type = "t2.micro"
}

