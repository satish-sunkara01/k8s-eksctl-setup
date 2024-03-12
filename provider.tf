terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }

  backend "s3" {
    bucket = "robodhop-state-prod"
    key    = "eksctl-setup"
    region = "us-east-1"
    dynamodb_table = "roboshop-locking-prod"
  }
}

provider "aws" {
  region = "us-east-1"
}