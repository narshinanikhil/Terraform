terraform {
  backend "s3" {
    bucket  = "nikhil.statefile-backup"
    region  = "us-east-1"
    key     = "prod/terraform.tfstate"
    encrypt = true
    use_lockfile = true
  }
}
