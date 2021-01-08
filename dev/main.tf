terraform {
  required_version = "=0.14.3"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>3.0"
    }
  }

  backend "s3" {
    bucket         = "miki-terraformexample-state"
    key            = "justatest.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform-state-lock"
  }
}