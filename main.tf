terraform {
  backend "remote" {
    organization = "octopus-deploy"
    workspaces {
      name = "egorp-test-workspace"
    }
  }
}

variable "aws_access_key" {
  type = string
}

variable "aws_secret_key" {
  type = string
}

provider "aws" {
  region     = "us-east-1"
  access_key = aws_access_key
  secret_key = aws_secret_key
}