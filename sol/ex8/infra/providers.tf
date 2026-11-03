terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.9"
    }
  }

  backend "s3" {
    bucket = "ex8-backend-bucket-f8b9e3ef715b"
    region = "ap-southeast-1"
  } 
}

provider "aws" {
  region = "ap-southeast-1"
}