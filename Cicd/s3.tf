resource "aws_s3_bucket" "a1s3" {
  bucket = "my-tf-test-bucket-ssssss3"

  tags = {
    Name        = "S3 first"
    Environment = "Dev"
  }
}

