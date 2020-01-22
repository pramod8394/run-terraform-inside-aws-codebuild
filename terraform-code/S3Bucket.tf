resource "aws_s3_bucket" "b" {
  bucket = "test-bucket-terraform"
  acl    = "private"

  tags = {
    Name        = "Terraformdemo bucket"
    Environment = "Dev-Env"
  }
  versioning {
    enabled = true
  }
}
