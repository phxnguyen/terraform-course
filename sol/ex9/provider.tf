terraform {
  required_version = "~> 1.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
  alias  = "ap_southeast_1"
}


provider "aws" {
  region = "ap-southeast-2"
  alias  = "ap_southeast_2"
}


resource "aws_s3_bucket" "ex9_bucket_ap_southeast_1" {
  provider = aws.ap_southeast_1
  bucket   = "ex9-some-random-bucket-name-1-asddvzsdfsfasdffasdf"
}

resource "aws_s3_bucket" "ex9_bucket_ap_southeast_2" {
  provider = aws.ap_southeast_2
  bucket   = "ex9-some-random-bucket-name-2-aasassdfasdf"
}
