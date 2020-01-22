resource "aws_s3_bucket" "b" {
  bucket = "n-1234-test-bucket-terraform"
  acl    = "private"

  tags = {
    Name        = "Terraformdemo bucket"
    Environment = "Dev-Env"
  }
  versioning {
    enabled = true
  }
}
