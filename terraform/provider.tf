terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.8.0"
    }
#    gsuite = {
#      source = "DeviaVir/gsuite"
#      version = "0.1.62"
#    }
#    google = {
#      source = "hashicorp/google"
#      version = "4.16.0"
#    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

