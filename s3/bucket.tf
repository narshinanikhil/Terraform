resource "aws_s3_bucket" "mybucket" {
  bucket = "nikhil.statefile-backup"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.mybucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

