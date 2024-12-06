terraform {
  backend "s3" {
    bucket = "terrateam-test-bucket"
    key    = "states/gitops-mini-bootcamp/prod"
    region = "us-east-1"
  }
}
