terraform {
  backend "s3" {
    bucket = "eks-terraform-build-bucket"
    key    = "global/s3/terraform.tfstate"
    region = "us-east-1"
  }
}