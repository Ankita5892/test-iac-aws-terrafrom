provider "aws" {
version = "3.27.0"
  region = "eu-west-1"
  access_key = "test-key"
  secret_key = "test-secret-key"
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}
