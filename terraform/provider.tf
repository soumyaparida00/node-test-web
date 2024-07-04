terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.60.0"
    }
  }

  backend "s3" {
    bucket         = "siva-terraform-state"
    key            = "web"
    region         = "ap-south-1"
    dynamodb_table = "terraform-state"
  }
}

provider "aws" {
  region = "ap-south-1"
}