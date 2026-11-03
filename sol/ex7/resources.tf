
resource "random_id" "bucket_suffix" {
  byte_length = 6
}

resource "aws_s3_bucket" "ex7_bucket" {
  bucket = "ex7-bucket-${random_id.bucket_suffix.hex}"
}


output "ex7_bucket_name" {
  value = aws_s3_bucket.ex7_bucket.bucket
}

