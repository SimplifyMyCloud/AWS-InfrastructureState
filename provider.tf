terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
      region = "us-west-1"
    }
  }
  required_version = ">= 1.0.0"
}
