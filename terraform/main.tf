provider "aws" {
  region                  = "eu-west-1"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "gordonmurray"
}

terraform {
  backend "s3" {
    encrypt                 = true
    bucket                  = "terraform-lamp"
    region                  = "eu-west-1"
    key                     = "terraform/terraform.tfstate"
    shared_credentials_file = "~/.aws/credentials"
    profile                 = "gordonmurray"
  }
}
