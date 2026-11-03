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
    bucket = "ex7-tf-s3-backend"
    key    = "state.tfstate"
    region = "ap-southeast-1"
  } 
}

provider "aws" {
  region = "ap-southeast-1"
}