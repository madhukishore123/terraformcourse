resource "aws_s3_bucket" "tf_s3" {
  bucket = "udemy-bucket-s3"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = false
  }

  tags {
    Name = "remotestores3"
  }
}
