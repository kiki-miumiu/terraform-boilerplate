terraform {
  backend "s3" {
    # To be filled with terraform init --backend-config=env/dev01_SD000_001.conf
  }
  required_version = ">= 1.9.7"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "<= 5.69"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2"
}
