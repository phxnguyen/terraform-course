
resource "random_id" "bucket_suffix" {
  byte_length = 6
}

resource "aws_s3_bucket" "ex8_backend_bucket" {
  bucket = "ex8-backend-bucket-${random_id.bucket_suffix.hex}"
}


output "ex8_bucket_name" {
  value = aws_s3_bucket.ex7_bucket.bucket
}

