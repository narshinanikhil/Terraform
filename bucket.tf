resource "aws_s3_bucket" "bucket" {
for_each = toset(["nikhil.terraform12","nikhil.terraform13"])
  bucket  = each.key
}
