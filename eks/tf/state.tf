terraform {
  backend "s3" {
    bucket = "883732806798-state"
    key    = "bastian/test/eks"
    region = "eu-central-1"
  }
}