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
}

resource "random_id" "bucket_suffix" {
  byte_length = 6
}

resource "aws_s3_bucket" "ex5_bucket" {
    bucket = "ex5-bucket-${random_id.bucket_suffix.hex}"
}

output "ex5_bucket_name" {
    value = aws_s3_bucket.ex5_bucket.bucket
}