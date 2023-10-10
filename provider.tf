# configure aws provider
provider "aws" {
  region  = var.region
  profile = "nacromancer"
}

# configure backend
terraform {
  backend "s3" {
    bucket         = "eks-cluster-multiple-customers"
    key            = "terraform.tfstate"
    region         = "ap-northeast-1"
    profile        = "nacromancer"
  }
}