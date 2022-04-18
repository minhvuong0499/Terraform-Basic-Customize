terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.9.0"
    }
  }

  required_version = ">= 1.0.6"
}

# Setup AWS provider
provider "aws" {
  region     = var.aws_region
  access_key = ""
  secret_key = ""
}
