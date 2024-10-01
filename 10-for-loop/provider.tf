terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.69.0"
    }
  }

  backend "s3" {
    bucket         = "terraform-prctc-state-files"
    key            = "10-for-llop.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-prctc-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
